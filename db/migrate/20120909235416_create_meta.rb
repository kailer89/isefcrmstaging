class CreateMeta < ActiveRecord::Migration
  def change
    create_table :meta do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.string :clave_del_programa
      t.date :fecha_de_inicio
      t.integer :nivel_id
      t.integer :programa_id
      t.string :ciudad_de_apertura
      t.string :estado_de_apertura
      t.string :modalidad
      t.integer :turno_id
      t.string :horarios
      t.text :horarios_text
      t.string :lugar_donde_se_impartiran_las_clases
      t.integer :asesor_a_cargo
      t.string :status_de_fecha_de_apertura
      t.string :meta_de_alumnos
      t.string :meta_de_enteros
      t.string :viabilidad_de_la_apertura

      t.timestamps
    end
  end
end
