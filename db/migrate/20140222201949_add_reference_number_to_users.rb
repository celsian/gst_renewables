class AddReferenceNumberToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :reference_number, :string
  end

  def self.down
    remove_column :users, :reference_number
  end
end
