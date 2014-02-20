class CreateVisualInspections < ActiveRecord::Migration
  def change
    create_table :visual_inspections do |t|
      t.references :pv_commission, index: true

      t.timestamps
    end
  end
end
