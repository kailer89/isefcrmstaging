class AddComentariosToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :comentarios, :text
  end
end
