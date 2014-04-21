class AddDataAcquisitionSystemReferenceToInfoboxes < ActiveRecord::Migration
  def change
    add_column :infoboxes, :data_acquisition_system_id, :integer
  end
end
