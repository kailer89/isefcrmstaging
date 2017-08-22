class AddCreatedByAndAssignedToIdAndSedeIdToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :created_by, :integer
    add_column :memos, :assigned_to, :integer
    add_column :memos, :sede_id, :integer
  end
end
