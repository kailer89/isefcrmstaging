class CreateMedioDeContactos < ActiveRecord::Migration
  def change
    create_table :medio_de_contactos do |t|
      t.boolean :feria_universitaria_en_su_colegio
      t.boolean :visita_a_su_salon
      t.boolean :recomendacion_de_un_amigo_familiar
      t.boolean :recomendacion_de_un_egresado
      t.boolean :sitio_oficial_web_ISEF
      t.boolean :facebook
      t.boolean :twitter
      t.boolean :email_de_promocion_mailing
      t.boolean :impreso_flyer_folleto
      t.boolean :anuncio_publicacion_periodico_revista
      t.boolean :llamada_telefonica_de_un_asesor
      t.boolean :conferencia_platica_charla
      t.boolean :sesion_informativa
      t.boolean :visito_las_instalaciones
      t.boolean :convenio_con_su_institucion
      t.boolean :otro
      t.string :otro_texto
      t.text :comentarios

      t.timestamps
    end
  end
end
