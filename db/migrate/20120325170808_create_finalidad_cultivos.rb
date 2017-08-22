class CreateFinalidadCultivos < ActiveRecord::Migration
  def change
    create_table :finalidad_cultivos do |t|
      t.string :finalidad_cultivo
      t.integer :mercado_meta_id

      t.timestamps
    end
  end
end
