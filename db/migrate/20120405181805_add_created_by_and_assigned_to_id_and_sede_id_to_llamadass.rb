class AddCreatedByAndAssignedToIdAndSedeIdToLlamadass < ActiveRecord::Migration
  def change
    add_column :llamadas, :created_by, :integer
    add_column :llamadas, :assigned_to, :integer
    add_column :llamadas, :sede_id, :integer
  end
end
