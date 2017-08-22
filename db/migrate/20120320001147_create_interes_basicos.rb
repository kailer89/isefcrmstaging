class CreateInteresBasicos < ActiveRecord::Migration
  def change
    create_table :interes_basicos do |t|
      t.string :ultimo_grado_de_estudios
      t.string :preparatoria_universidad_de_origen
      t.string :municipio_de_la_preparatoria_universidad_de_origen
      t.integer :ano_de_graduacion
      t.string :sede_y_subsede_de_interes
      t.string :programa_de_interes
      t.string :nivel
      t.string :turno
      t.string :periodo_para_ingresar
      t.string :status_de_interes_del_prospecto_validado
      t.text :comentarios

      t.timestamps
    end
  end
end
