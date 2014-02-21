class CreateInverterInspections < ActiveRecord::Migration
  def change
    create_table :inverter_inspections do |t|
      t.references :pv_commission, index: true

      t.timestamps
    end
  end
end