class AddFechaDeNacimientoEmptyToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :fecha_de_nacimiento_empty, :boolean
  end
end
