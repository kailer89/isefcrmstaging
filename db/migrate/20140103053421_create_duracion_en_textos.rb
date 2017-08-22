class CreateDuracionEnTextos < ActiveRecord::Migration
  def change
    create_table :duracion_en_textos do |t|
      t.string :valor

      t.timestamps
    end
  end
end
