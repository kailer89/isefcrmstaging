class AddPendienteToLlamadas < ActiveRecord::Migration
  def change
    add_column :llamadas, :pendiente, :boolean
    add_column :memos, :pendiente, :boolean
    add_column :tareas, :pendiente, :boolean
  end
end
