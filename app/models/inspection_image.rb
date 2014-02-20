class InspectionImage < ActiveRecord::Base
  belongs_to :infobox

  validates :pic, presence: true

  mount_uploader :pic, InspectionImageUploader
end
