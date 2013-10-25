class PvCommission < ActiveRecord::Base
  belongs_to :project
  has_many :visual_inspections
  has_one :pv_array_test
  has_many :inverter_inspections
end
