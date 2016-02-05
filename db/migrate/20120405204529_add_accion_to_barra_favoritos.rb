class AddAccionToBarraFavoritos < ActiveRecord::Migration
  def change
    add_column :barra_favoritos, :accion, :string
  end
end
