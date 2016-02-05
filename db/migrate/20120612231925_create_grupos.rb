class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
