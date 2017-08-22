class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_de_inicio_de_la_tarea
      t.time :hora_de_inicio
      t.date :fecha_de_fin_de_la_tarea
      t.time :hora_de_fin
      t.string :attachment

      t.timestamps
    end
  end
end
