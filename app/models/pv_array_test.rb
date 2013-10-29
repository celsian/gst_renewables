class PvArrayTest < ActiveRecord::Base
  belongs_to :pv_commission
  has_many :string_tests

  mount_uploader :combiner_exterior_pic, CombinerUploader
  mount_uploader :combiner_interior_pic, CombinerUploader
  mount_uploader :combiner_flir_pic, CombinerUploader
  
end
