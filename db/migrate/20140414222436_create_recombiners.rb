class CreateRecombiners < ActiveRecord::Migration
  def change
    create_table :recombiners do |t|
      t.string :name
      t.string :inspector
      t.boolean :verification
      t.string :test_instrument
      t.string :recombiner_model
      t.string :mfg
      t.string :recombiner_exterior_pic
      t.string :recombiner_interior_pic
      t.string :recombiner_flir_pic
      t.references :pv_commission, index: true

      t.timestamps
    end
  end
end
