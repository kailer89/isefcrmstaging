class CreateMunicipioDeLaPreparatoriaOUniversidadDeOrigens < ActiveRecord::Migration
  def change
    create_table :municipio_de_la_preparatoria_o_universidad_de_origens do |t|
      t.string :valor

      t.timestamps
    end
  end
end
