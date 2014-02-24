class Project < ActiveRecord::Base
  has_many :pv_commissions
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :reference_number, uniqueness: true

  default_scope { order("name") }
end
