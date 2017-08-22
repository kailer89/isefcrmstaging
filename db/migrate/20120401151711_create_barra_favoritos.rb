class CreateBarraFavoritos < ActiveRecord::Migration
  def change
    create_table :barra_favoritos do |t|
      t.integer :favorito_id
      t.integer :user_id

      t.timestamps
    end
  end
end
