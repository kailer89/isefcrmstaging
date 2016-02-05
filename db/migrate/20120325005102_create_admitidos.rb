class CreateAdmitidos < ActiveRecord::Migration
  def change
    create_table :admitidos do |t|
      t.string :status_admision
      t.text :comentarios_de_la_direccion
      t.string :status_de_la_notificacion
      t.string :status_del_admitido
      t.text :cometnarios_de_notificacion
      t.boolean :solicitud_de_admision
      t.boolean :copia_del_acta_de_nacimiento
      t.boolean :copia_del_certificado_de_preparatoria_licenciatura
      t.boolean :fotografias_tamano_infantil_blanco_y_negro_papel_mate
      t.boolean :copia_del_comprobante_de_pago_de_inscripcion
      t.text :comentarios_documentacion

      t.timestamps
    end
  end
end
