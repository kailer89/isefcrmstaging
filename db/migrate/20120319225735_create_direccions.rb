class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :no_interior
      t.integer :no_exterior
      t.string :colonia
      t.string :delegacion_municipio
      t.text :comentarios

      t.timestamps
    end
  end
end
