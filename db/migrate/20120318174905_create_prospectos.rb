class CreateProspectos < ActiveRecord::Migration
  def change
    create_table :prospectos do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.boolean :sexo
      t.date :fecha_de_nacimiento
      t.string :nacionalidad
      t.string :telefono_particular
      t.string :telefono_movil
      t.string :otro_telefono
      t.string :email
      t.boolean :validado, :default => false

      t.timestamps
    end
  end
end
