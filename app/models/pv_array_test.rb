class PvArrayTest < ActiveRecord::Base
  belongs_to :pv_commission
  has_many :string_tests

  mount_uploader :combiner_exterior_pic, PicUploader
  mount_uploader :combiner_interior_pic, PicUploader
  mount_uploader :combiner_flir_pic, PicUploader
  
end
