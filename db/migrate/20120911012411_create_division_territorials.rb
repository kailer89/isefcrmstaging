class CreateDivisionTerritorials < ActiveRecord::Migration
  def change
    create_table :division_territorials do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.text :estados_correspondientes
      t.string :estado_ciudad_con_grupo_abierto
      t.integer :programa_id
      t.date :fecha_de_inicio
      t.date :fecha_de_termino
      t.string :estado_ciudad_con_grupo_abierto_1
      t.integer :programa_id_1
      t.date :fecha_de_inicio_1
      t.date :fecha_de_termino_1
      t.string :estado_ciudad_con_grupo_abierto_2
      t.integer :programa_id_2
      t.date :fecha_de_inicio_2
      t.date :fecha_de_termino_2
      t.string :estado_ciudad_con_grupo_abierto_3
      t.integer :programa_id_3
      t.date :fecha_de_inicio_3
      t.date :fecha_de_termino_3
      t.string :estado_ciudad_con_grupo_abierto_4
      t.integer :programa_id_4
      t.date :fecha_de_inicio_4
      t.date :fecha_de_termino_4
      t.string :estado_ciudad_con_grupo_abierto_5
      t.integer :programa_id_5
      t.date :fecha_de_inicio_5
      t.date :fecha_de_termino_5
      t.integer :info_sim_sede_id
      t.text :estado_ciudad_con_mas_de_100_mil_habitantes
      t.string :acceso_directo_al_sim

      t.timestamps
    end
  end
end
