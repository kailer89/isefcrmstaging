class CreateCampanaSocials < ActiveRecord::Migration
  def change
    create_table :campana_socials do |t|
      t.string :nombre
      t.text :descripcion
      t.string :tipo
      t.string :proveedor

      t.timestamps
    end
  end
end
