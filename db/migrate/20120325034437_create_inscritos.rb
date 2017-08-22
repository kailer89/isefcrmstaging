class CreateInscritos < ActiveRecord::Migration
  def change
    create_table :inscritos do |t|
      t.string :status_de_la_inscripcion
      t.date :fecha_limite_de_pago_de_inscripcion
      t.string :status_del_pago_de_inscripcion
      t.text :comentarios_del_coordinador_academico
      t.integer :admitido_id

      t.timestamps
    end
  end
end
