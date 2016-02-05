class CreatePreparatoriaOUniversidadDeOrigens < ActiveRecord::Migration
  def change
    create_table :preparatoria_o_universidad_de_origens do |t|
      t.string :valor

      t.timestamps
    end
  end
end
