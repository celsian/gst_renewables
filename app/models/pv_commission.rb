class PvCommission < ActiveRecord::Base
  belongs_to :project
  has_many :visual_inspections, dependent: :destroy
  has_many :recombiners, dependent: :destroy
  has_many :pv_array_tests, dependent: :destroy
  has_many :inverter_inspections, dependent: :destroy
  has_many :data_acquisition_systems, dependent: :destroy

  validates :reference_number, :recombiner_presence, :project_id, presence: true
  validates :reference_number, uniqueness: true
  
  YESNO = ["Yes", "No"]

  def row_count
    if recombiner_presence == "No"
      [pv_array_tests.length, visual_inspections.length, inverter_inspections.length, data_acquisition_systems.length].max
    else
      [recombiners.length, visual_inspections.length, inverter_inspections.length, data_acquisition_systems.length].max
    end
  end

  def error_messages
    messages = ""
    errors.full_messages.each do |message|
      messages += message + "."
    end
    messages
  end
  
end
