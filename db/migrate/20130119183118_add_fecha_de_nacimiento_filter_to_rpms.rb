class AddFechaDeNacimientoFilterToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :fecha_de_nacimiento_filter, :string
  end
end
