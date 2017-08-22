class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nivel
      t.string :programa
      t.text :descripcion_detallada
      t.text :principales_caracteristicas
      t.text :principales_ventajas
      t.text :principales_beneficios

      t.timestamps
    end
  end
end
