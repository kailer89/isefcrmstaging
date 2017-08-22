class AddComentariosToLlamadas < ActiveRecord::Migration
  def change
    add_column :llamadas, :comentarios, :text
  end
end
