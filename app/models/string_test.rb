class StringTest < ActiveRecord::Base
  require 'csv'

#Header Stuff
  belongs_to :pv_array_test
  after_initialize :init

  default_scope order("id") #DO NOT CHANGE THIS, ordering matters for self.import function

  mount_uploader :array_module_flir_pic, StringArrayUploader
#End Header

  def init
    self.array_module ||= "Yingli YL-230P"
    self.array_quantity ||= "12"
    self.array_parameters_voc ||= "475"
    self.array_parameters_isc ||= "6.9"
    self.string_type ||= "PV Fuse"
    self.string_rating ||= "12"
    self.string_d_rating ||= "600"
    self.string_capacity ||= "30"
    self.wiring_type ||= "Copper"
    self.wiring_insulation ||= "USE-2"
    self.wiring_size ||= "#10 awg"
    self.array_insulation_resistance_test_voltage ||= "500"
    self.array_insulation_resistance_pos ||= "<0.05"
    self.array_insulation_resistance_neg ||= "<0.05"
  end

  def self.remove_empty_lines(array_of_hashes)
    (array_of_hashes.length-1).downto(0) do |count|
      unless array_of_hashes[count][:string_test_voc].to_i > 1 || array_of_hashes[count][:string_test_voc] == "0.01"
        array_of_hashes.delete_at(count)
      end
    end
    array_of_hashes
  end

  def self.import(file, pv_array_test)
    csv = CSV.open(file.path)
    csv.shift
    csv.shift

    headers = [:index, nil, :string_test_voc, :string_test_isc, nil, nil, nil, :string_test_voltage, :string_test_voltage_type, :string_test_irradiance, nil, nil, nil, nil]

    string_data = csv.map {|row| row.map {|cell| cell.to_s } }
    array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }

    #Remove empty lines
    array_of_hashes = StringTest.remove_empty_lines(array_of_hashes)

    ####### Separate Strings
    all_strings = []
    temp_strings = []

    string_index = 0
    temp_index = 0

    array_of_hashes.each_with_index do |row, index|
      if row[:index].to_i >= 1 && row[:index].to_i <= 510
        if row[:string_test_voc].to_i > 1

          st = StringTest.new
          st.name = string_index+1
          st.attributes = row.to_hash.slice(:string_test_voc, :string_test_isc, :string_test_irradiance)
          st.pv_array_test = pv_array_test

          temp_strings << st
          string_index += 1

        elsif row[:string_test_voc] == "0.01"
            temp_strings[temp_index].attributes = row.to_hash.slice(:string_test_voltage)
            temp_index += 1


          if (array_of_hashes[index+1] && array_of_hashes[index+1][:string_test_voc].to_i > 1 ) || !array_of_hashes[index+1]
            all_strings_index = all_strings.length
            all_strings[all_strings_index] = []

            temp_strings.each do |string|
              all_strings[all_strings_index] << string
            end

            temp_strings = []
            temp_index = 0
            string_index = 0
          end
        end
      end
    end

    pv_commission = pv_array_test.pv_commission?
    combiner_count = pv_commission.combiner_count-1
    unless combiner_count >= all_strings.length
      all_strings[combiner_count].each do |string|
        string.save
      end
    end

  end #self.import

end