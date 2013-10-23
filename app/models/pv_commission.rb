class PvCommission < ActiveRecord::Base
  belongs_to :project
  has_many :visual_inspections
  has_many :pv_array_tests
  has_many :inverter_inspections
end
