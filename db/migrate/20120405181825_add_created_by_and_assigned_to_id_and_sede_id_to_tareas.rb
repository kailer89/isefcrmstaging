class AddCreatedByAndAssignedToIdAndSedeIdToTareas < ActiveRecord::Migration
  def change
    add_column :tareas, :created_by, :integer
    add_column :tareas, :assigned_to, :integer
    add_column :tareas, :sede_id, :integer
  end
end
