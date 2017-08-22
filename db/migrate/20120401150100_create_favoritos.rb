class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.string :nombre
      t.string :model

      t.timestamps
    end
  end
end
