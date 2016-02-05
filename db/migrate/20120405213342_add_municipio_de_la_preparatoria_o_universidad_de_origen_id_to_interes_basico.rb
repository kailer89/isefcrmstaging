class AddMunicipioDeLaPreparatoriaOUniversidadDeOrigenIdToInteresBasico < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :municipio_de_la_preparatoria_o_universidad_de_origen_id, :integer
  end
end
