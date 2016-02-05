class CreateEquipoPromocions < ActiveRecord::Migration
  def change
    create_table :equipo_promocions do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.boolean :sexo
      t.date :fecha_de_nacimiento
      t.string :nacionalidad
      t.string :cargo
      t.string :sede
      t.float :horas_laborales_semanales
      t.string :tipo_de_contrato
      t.date :fecha_de_ingreso
      t.string :jefe_directo
      t.string :cargo_del_jefe_directo
      t.string :telefono_particular
      t.string :movil
      t.string :otro_tel
      t.string :email_personal
      t.string :email_laboral
      t.string :modalidad_de_pago
      t.decimal :sueldo_bruto
      t.float :porcentaje_de_comision
      t.string :calle
      t.string :no_exterior
      t.string :no_interior
      t.string :colonia
      t.string :codigo_postal
      t.text :comentarios_direccion

      t.timestamps
    end
  end
end
