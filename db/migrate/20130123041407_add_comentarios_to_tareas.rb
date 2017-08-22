class AddComentariosToTareas < ActiveRecord::Migration
  def change
    add_column :tareas, :comentarios, :text
  end
end
