class AddRecombinerToPvCommission < ActiveRecord::Migration
  def change
    add_column :pv_commissions, :recombiner_presence, :string
  end
end
