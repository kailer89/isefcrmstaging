class CreateCasos < ActiveRecord::Migration
  def change
    create_table :casos do |t|
      t.string :caso
      t.string :status_del_caso
      t.string :nombre_del_cliente
      t.date :fecha_que_se_presenta_el_problema
      t.date :fecha_estimada_de_resolucion
      t.string :ambito_del_problema
      t.text :sintoma_problema
      t.text :descripcion_del_sintoma_problema
      t.text :causa_del_problema
      t.text :alternativas_de_solucion
      t.text :solucion
      t.text :comentarios_de_seguimiento_al_problema
      t.string :atentido_por
      t.string :resuelto_por
      t.date :fecha_que_se_soluciono

      t.timestamps
    end
  end
end
