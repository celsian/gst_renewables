class AddReferenceNumberToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :reference_number, :string
  end
end
