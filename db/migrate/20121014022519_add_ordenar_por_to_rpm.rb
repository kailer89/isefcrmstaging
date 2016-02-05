class AddOrdenarPorToRpm < ActiveRecord::Migration
  def change
    add_column :rpms, :ordenar_por, :string
  end
end
