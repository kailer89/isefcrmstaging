class AddProspectoIdToDireccion < ActiveRecord::Migration
  def change
    add_column :direccions, :prospecto_id, :integer
  end
end
