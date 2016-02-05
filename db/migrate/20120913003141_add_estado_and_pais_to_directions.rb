class AddEstadoAndPaisToDirections < ActiveRecord::Migration
  def change
    add_column :direccions, :estado, :string
    add_column :direccions, :pais, :string
  end
end
