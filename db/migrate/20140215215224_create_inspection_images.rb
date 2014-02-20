class CreateInspectionImages < ActiveRecord::Migration
  def change
    create_table :inspection_images do |t|
      t.string :pic
      t.references :infobox, index: true

      t.timestamps
    end
  end
end
