class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre_completo
      t.string :organizacion
      t.string :cargo
      t.string :archivar_como
      t.string :correo_electronico
      t.string :pagina_web
      t.string :direccion_de_instant_messenger
      t.string :numeros_de_trabajo
      t.string :numero_particular
      t.string :numero_del_fax_del_trabajo
      t.string :numero_movil
      t.text :direccion_trabajo
      t.text :notas

      t.timestamps
    end
  end
end
