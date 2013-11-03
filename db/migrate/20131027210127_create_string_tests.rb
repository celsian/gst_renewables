class CreateStringTests < ActiveRecord::Migration
  def change
    create_table :string_tests do |t|
      t.references :pv_array_test, index: true
      t.string :name
      t.string :array_module
      t.string :array_quantity
      t.string :array_parameters_voc
      t.string :array_parameters_isc
      t.string :string_type
      t.string :string_rating
      t.string :string_d_rating
      t.string :string_capacity
      t.string :wiring_type
      t.string :wiring_insulation
      t.string :wiring_size
      t.string :string_test_voc
      t.string :string_test_isc
      t.string :string_test_irradiance
      t.string :string_test_voltage
      t.string :array_insulation_resistance_test_voltage
      t.string :array_insulation_resistance_pos
      t.string :array_insulation_resistance_neg
      t.string :array_module_flir_pic

      t.timestamps
    end
  end
end
