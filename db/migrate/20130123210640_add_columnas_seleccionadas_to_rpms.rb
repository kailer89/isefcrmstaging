class AddColumnasSeleccionadasToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :columnas_seleccionadas, :text
  end
end
