class CreateBecacreditos < ActiveRecord::Migration
  def change
    create_table :becacreditos do |t|
      t.boolean :solicitud_de_beca_credito
      t.float :porcentaje_de_beca_credito
      t.float :porcentaje_de_credito_solicitado
      t.decimal :estimado_de_pago_mensual_de_colegiatura
      t.string :status_de_ESE
      t.string :status_de_pago_ESE
      t.float :porcentaje_de_beca_sugerido_ESE
      t.date :fecha_limite_de_aplicacion_ESE
      t.date :fecha_limite_de_pago_ESE
      t.date :porcentaje_de_credito_sugerido_ESE
      t.text :comentarios
      t.string :status_del_tramite
      t.float :porcentaje_de_beca_concedido
      t.text :comentarios_dictamen_beca
      t.integer :solicitante_id

      t.timestamps
    end
  end
end
