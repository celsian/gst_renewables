class CreatePvCommissions < ActiveRecord::Migration
  def change
    create_table :pv_commissions do |t|
      t.string :reference_number
      t.string :owner
      t.string :dc_system_size
      t.string :module_make_model
      t.string :module_quanitity
      t.string :combiner_make_model
      t.string :recombiner_make_model
      t.string :inverter_make_model
      t.string :inverter_serial_number
      t.string :das_system_manufacturer
      t.references :project, index: true

      t.timestamps
    end
  end
end
