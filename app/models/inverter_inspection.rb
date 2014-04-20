class InverterInspection < ActiveRecord::Base
  belongs_to :pv_commission
  has_many :infoboxes, dependent: :destroy
  has_many :inspection_images, through: :infoboxes

  accepts_nested_attributes_for :infoboxes, :allow_destroy => true


  validates :name, presence: true
end
