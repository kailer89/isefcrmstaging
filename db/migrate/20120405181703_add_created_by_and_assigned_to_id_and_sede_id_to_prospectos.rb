class AddCreatedByAndAssignedToIdAndSedeIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :created_by, :integer
    add_column :prospectos, :assigned_to, :integer
    add_column :prospectos, :sede_id, :integer
  end
end
