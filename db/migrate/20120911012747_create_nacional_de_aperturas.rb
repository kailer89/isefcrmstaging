class CreateNacionalDeAperturas < ActiveRecord::Migration
  def change
    create_table :nacional_de_aperturas do |t|
      t.string :periodo_actual
      t.integer :sede_id
      t.string :clave_del_programa
      t.date :fecha_de_inicio
      t.integer :programa_id
      t.string :ciudad_de_apertura
      t.string :estado_de_apertura
      t.string :estado_de_apertura
      t.string :modalidad
      t.string :turno
      t.text :horarios
      t.string :lugar_donde_se_impartiran_las_clases
      t.integer :asesor_a_cargo
      t.string :email_de_contacto
      t.string :status_de_la_fecha_de_apertura

      t.timestamps
    end
  end
end
