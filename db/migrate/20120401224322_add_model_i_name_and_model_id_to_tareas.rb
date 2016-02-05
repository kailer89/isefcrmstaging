class AddModelINameAndModelIdToTareas < ActiveRecord::Migration
  def change
    add_column :tareas, :model_name, :string
    add_column :tareas, :model_id, :integer
  end
end
