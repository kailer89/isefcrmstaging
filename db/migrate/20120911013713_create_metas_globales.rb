class CreateMetasGlobales < ActiveRecord::Migration
  def change
    create_table :metas_globales do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.string :meta_anual_de_alumnos_de_licenciatura
      t.string :meta_anual_de_enteros_de_licenciatura
      t.string :meta_anual_de_alumnos_de_posgrado
      t.string :meta_anual_de_enteros_de_posgrado
      t.string :no_de_grupos_al_ano_de_licenciatura
      t.string :no_de_grupos_al_ano_de_posgrado_local
      t.string :no_de_grupos_al_ano_de_posgrado_foraneo
      t.string :total_de_grupos_al_ano
      t.string :metas_establecidas_por
      t.text :observaciones

      t.timestamps
    end
  end
end
