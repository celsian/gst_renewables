class PvArrayTest < ActiveRecord::Base
  belongs_to :pv_commission
  belongs_to :recombiner
  has_many :string_tests, dependent: :destroy

  default_scope order("id")

  accepts_nested_attributes_for :string_tests

  mount_uploader :combiner_exterior_pic, CombinerUploader
  mount_uploader :combiner_interior_pic, CombinerUploader
  mount_uploader :combiner_flir_pic, CombinerUploader
  
  def error_messages
    messages = ""
    errors.full_messages.each do |message|
      messages += message + "."
    end
    messages
  end
  
end
