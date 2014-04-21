class CreatePvArrayTests < ActiveRecord::Migration
  def change
    create_table :pv_array_tests do |t|
      t.references :pv_commission, index: true
      t.references :recombiner, index: true
      t.string :name
      t.string :megger_test
      t.string :comments
      t.string :voltage
      t.string :test_voltage
      t.string :pos
      t.string :neg
      t.string :test_number
      t.boolean :initial_verification
      t.string :inspector
      t.string :test_instruments
      t.string :combiner
      t.string :mfg
      t.string :combiner_exterior_pic
      t.string :combiner_interior_pic
      t.string :combiner_flir_pic

      t.timestamps
    end
  end
end
