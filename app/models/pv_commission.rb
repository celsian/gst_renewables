class PvCommission < ActiveRecord::Base
  belongs_to :project
  has_many :visual_inspections
  has_many :recombiners
  has_many :pv_array_tests
  has_many :inverter_inspections

  validates :reference_number, :recombiner_presence, :project_id, presence: true
  validates :reference_number, uniqueness: true
  
  YESNO = ["Yes", "No"]

  def row_count
    if recombiner_presence == "No"
      [pv_array_tests.length, visual_inspections.length, inverter_inspections.length].max
    else
      [recombiners.length, visual_inspections.length, inverter_inspections.length].max
    end
  end
end
