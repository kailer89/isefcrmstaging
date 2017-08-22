class AddFechaDeNacimientoToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :fecha_de_nacimiento, :string
  end
end
