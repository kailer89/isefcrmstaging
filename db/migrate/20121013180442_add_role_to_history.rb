class AddRoleToHistory < ActiveRecord::Migration
  def change
    add_column :histories, :role, :string
  end
end
