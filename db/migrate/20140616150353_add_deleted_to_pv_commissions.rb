class AddDeletedToPvCommissions < ActiveRecord::Migration
  def change
    add_column :pv_commissions, :deleted, :boolean
  end
end
