class AddThingsToRpms < ActiveRecord::Migration
  def change
  	#informacion personal
    add_column :rpms, :nombre_prospecto, :string
    add_column :rpms, :nombre_prospecto_filter, :string
    add_column :rpms, :nombre_prospecto_empty, :boolean

    add_column :rpms, :apellido_paterno, :string
    add_column :rpms, :apellido_paterno_filter, :string
    add_column :rpms, :apellido_paterno_empty, :boolean    

    add_column :rpms, :apellido_materno, :string
    add_column :rpms, :apellido_materno_filter, :string
    add_column :rpms, :apellido_materno_empty, :boolean    

    add_column :rpms, :email, :string
    add_column :rpms, :email_filter, :string
    add_column :rpms, :email_empty, :boolean

    add_column :rpms, :facebook, :string
    add_column :rpms, :facebook_filter, :string
    add_column :rpms, :facebook_empty, :boolean


    add_column :rpms, :twitter, :string
    add_column :rpms, :twitter_filter, :string
    add_column :rpms, :twitter_empty, :boolean    


    add_column :rpms, :telefono_particular, :string
    add_column :rpms, :telefono_particular_filter, :string
    add_column :rpms, :telefono_particular_empty, :boolean

    add_column :rpms, :telefono_movil, :string
    add_column :rpms, :telefono_movil_filter, :string
    add_column :rpms, :telefono_movil_empty, :boolean

    add_column :rpms, :otro_telefono, :string
    add_column :rpms, :otro_telefono_filter, :string
    add_column :rpms, :otro_telefono_empty, :boolean

    #direcciones
    add_column :rpms, :calle, :string
    add_column :rpms, :calle_filter, :string
    add_column :rpms, :calle_empty, :boolean

    add_column :rpms, :no_interior, :string
    add_column :rpms, :no_interior_filter, :string
    add_column :rpms, :no_interior_empty, :boolean

    add_column :rpms, :no_exterior, :string
    add_column :rpms, :no_exterior_filter, :string
    add_column :rpms, :no_exterior_empty, :boolean

    add_column :rpms, :colonia, :string
    add_column :rpms, :colonia_filter, :string
    add_column :rpms, :colonia_empty, :boolean

    add_column :rpms, :delegacion_municipio, :string
    add_column :rpms, :delegacion_municipio_filter, :string
    add_column :rpms, :delegacion_municipio_empty, :boolean    

    add_column :rpms, :estado, :string
    add_column :rpms, :estado_filter, :string
    add_column :rpms, :estado_empty, :boolean

    add_column :rpms, :pais, :string
    add_column :rpms, :pais_filter, :string
    add_column :rpms, :pais_empty, :boolean

    add_column :rpms, :codigo_postal, :string
    add_column :rpms, :codigo_postal_filter, :string
    add_column :rpms, :codigo_postal_empty, :boolean

    add_column :rpms, :direccion_comentarios, :string
    add_column :rpms, :direccion_comentarios_filter, :string
    add_column :rpms, :direccion_comentarios_empty, :boolean

    #interes basico
    add_column :rpms, :ano_de_graduacion, :string
    add_column :rpms, :ano_de_graduacion_filter, :string
    add_column :rpms, :ano_de_graduacion_empty, :boolean

    add_column :rpms, :interes_basico_comentarios, :string
    add_column :rpms, :interes_basico_comentarios_filter, :string
    add_column :rpms, :interes_basico_comentarios_empty, :boolean


    #interes academico
    add_column :rpms, :opcion_1, :string
    add_column :rpms, :opcion_1_filter, :string
    add_column :rpms, :opcion_1_empty, :boolean

    add_column :rpms, :opcion_2, :string
    add_column :rpms, :opcion_2_filter, :string
    add_column :rpms, :opcion_2_empty, :boolean

    add_column :rpms, :opcion_3, :string
    add_column :rpms, :opcion_3_filter, :string
    add_column :rpms, :opcion_3_empty, :boolean

    #medio de contacto
    add_column :rpms, :medio_de_contactos_id, :string

    add_column :rpms, :otro, :string
    add_column :rpms, :otro_filter, :string
    add_column :rpms, :otro_empty, :boolean

    add_column :rpms, :medio_de_contactos_comentarios, :string
    add_column :rpms, :medio_de_contactos_comentarios_filter, :string
    add_column :rpms, :medio_de_contactos_comentarios_empty, :boolean        

    #plan de descuentos
    add_column :rpms, :descuento_en_la_inscripcion, :boolean

    add_column :rpms, :porcentaje, :string
    add_column :rpms, :porcentaje_filter, :string
    add_column :rpms, :porcentaje_empty, :boolean

    add_column :rpms, :fecha_de_caducidad, :string
    add_column :rpms, :fecha_de_caducidad_filter, :string
    add_column :rpms, :fecha_de_caducidad_empty, :boolean

    add_column :rpms, :descuentos_otro, :string
    add_column :rpms, :descuentos_otro_filter, :string
    add_column :rpms, :descuentos_otro_empty, :boolean    

    add_column :rpms, :fecha_de_otorgamiento, :string
    add_column :rpms, :fecha_de_otorgamiento_filter, :string
    add_column :rpms, :fecha_de_otorgamiento_empty, :boolean    

    add_column :rpms, :descuentos_comentarios, :string
    add_column :rpms, :descuentos_comentarios_filter, :string
    add_column :rpms, :descuentos_comentarios_empty, :boolean
  end
end
