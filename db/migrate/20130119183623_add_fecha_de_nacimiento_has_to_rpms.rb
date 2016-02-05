class AddFechaDeNacimientoHasToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :fecha_de_nacimiento_has, :string
  end
end
