class CreateMercadoMeta < ActiveRecord::Migration
  def change
    create_table :mercado_meta do |t|
      t.string :nombre_de_la_institucion_meta
      t.string :contacto_principal
      t.string :email
      t.string :pag_web
      t.text :observaciones_del_mercado_meta
      t.string :giro
      t.string :cargo
      t.string :email_secundario
      t.string :telefono
      t.string :movil
      t.string :otro_telefono
      t.string :calle
      t.string :no_interior
      t.string :no_exterior
      t.string :colonia
      t.string :delegacion_municipio
      t.string :codigo_postal
      t.text :comentarios_direccion
      t.string :mapa_google_maps

      t.timestamps
    end
  end
end
