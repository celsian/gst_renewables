class CreateInfoboxes < ActiveRecord::Migration
  def change
    create_table :infoboxes do |t|
      t.string :title
      t.string :description
      t.references :visual_inspection, index: true
      t.references :inverter_inspection, index: true

      t.timestamps
    end
  end
end
