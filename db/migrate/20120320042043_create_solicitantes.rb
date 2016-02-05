class CreateSolicitantes < ActiveRecord::Migration
  def change
    create_table :solicitantes do |t|
      t.boolean :socilicita_PAA
      t.boolean :solicita_pscicometria
      t.boolean :solicita_entrevista_academica
      t.string :status_depago_examen_de_admision
      t.float :promedio
      t.string :tipo_de_admision
      t.date :fecha_programacion_para_PAA
      t.date :fecha_programacion_para_examenes_pscicomentricos
      t.date :fecha_programada_para_entrevistas
      t.date :fecha_de_limite_de_pago_examen_de_admision
      t.time :hora_programada_PAA
      t.time :hora_programada_pscicometrico
      t.time :hora_programada_entrevistas
      t.text :comentarios
      t.integer :prospecto_id

      t.timestamps
    end
  end
end
