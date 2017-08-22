class CreateExaminados < ActiveRecord::Migration
  def change
    create_table :examinados do |t|
      t.string :status_del_examinado_paa
      t.float :puntuacion_verbal
      t.float :puntuacion_matematicas
      t.float :puntuacion_redaccion_indirecta
      t.float :puntaje_total_paa
      t.string :dictament_paa
      t.text :comentarios_evaluador_paa
      t.integer :solicitante_id

      t.timestamps
    end
  end
end
