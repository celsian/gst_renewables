class PvCommission < ActiveRecord::Base
  belongs_to :project
  has_many :visual_inspections
  has_many :pv_array_tests
  has_many :inverter_inspections

  def row_count
    [pv_array_tests.length, visual_inspections.length, inverter_inspections.length].max
  end
end
