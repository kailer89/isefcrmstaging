class AddPreparatoriaOUniversidadDeOrigenToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :preparatoria_o_universidad_de_origen_id, :integer
  end
end
