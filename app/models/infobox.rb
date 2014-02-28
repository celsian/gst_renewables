class Infobox < ActiveRecord::Base
  belongs_to :visual_inspection
  belongs_to :inverter_inspection
  has_many :inspection_images, dependent: :destroy

  validates :description, presence: true

  accepts_nested_attributes_for :inspection_images, :allow_destroy => true
   # :reject_if => lambda { |a| a[:pic].blank? },

  VISUAL_INSPECTION = ["Mechanical", "Exposed Conduit", "Exposed Conductor", "Rodent Damage", "Drainage/Erosion",
    "Shading", "Other"]

  INVERTER_INSPECTION = ["Corrosion", "Fan/Blower", "Air Filter", "Terminal Block", "Surge Suppressor", "DC Cable",
    "AC Cable", "Interior FLIR Pictures", "Operating Voltages and Readings", "Anti-Islanding Test", "Warranty Compliance",
   "Other"]
   
end
