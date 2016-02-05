class CreateTerritorios < ActiveRecord::Migration
  def change
    create_table :territorios do |t|
      t.string :nombre
      t.integer :sede_id
      t.string :estado
      t.string :ciudad
      t.text :descripcion_detallada

      t.timestamps
    end
  end
end
