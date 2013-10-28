class StringTest < ActiveRecord::Base
  belongs_to :pv_array_test

  mount_uploader :array_module_flir_pic, PicUploader


  
end
