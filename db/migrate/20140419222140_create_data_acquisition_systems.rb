class CreateDataAcquisitionSystems < ActiveRecord::Migration
  def change
    create_table :data_acquisition_systems do |t|
      t.string :name
      t.references :pv_commission, index: true

      t.timestamps
    end
  end
end
