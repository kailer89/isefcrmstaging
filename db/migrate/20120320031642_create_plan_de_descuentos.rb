class CreatePlanDeDescuentos < ActiveRecord::Migration
  def change
    create_table :plan_de_descuentos do |t|
      t.boolean :descuento_en_la_inscripcion
      t.integer :porcentaje
      t.date :fecha_de_caducidad
      t.string :otro_cual
      t.text :comentarios
      t.integer :prospecto_id

      t.timestamps
    end
  end
end
