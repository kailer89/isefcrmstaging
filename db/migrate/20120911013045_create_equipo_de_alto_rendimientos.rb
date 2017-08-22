class CreateEquipoDeAltoRendimientos < ActiveRecord::Migration
  def change
    create_table :equipo_de_alto_rendimientos do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.string :nombre_completo
      t.string :cargo
      t.text :proyectos_a_cargo
      t.text :horario_laboral
      t.date :fecha_de_nacimiento
      t.text :modalidad_de_contratacion
      t.text :horas_semanales
      t.string :email_institucional
      t.string :telefono_de_oficina
      t.string :extension
      t.string :jefe_directo
      t.string :cargo

      t.timestamps
    end
  end
end
