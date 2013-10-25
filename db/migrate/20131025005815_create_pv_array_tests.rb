class CreatePvArrayTests < ActiveRecord::Migration
  def change
    create_table :pv_array_tests do |t|
      t.reference :pv_commission
      t.string :combiner_exterior_pic
      t.string :combiner_interior_pic
      t.string :combiner_flir_pic

      t.timestamps
    end
  end
end
