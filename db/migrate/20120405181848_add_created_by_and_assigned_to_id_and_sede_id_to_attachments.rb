class AddCreatedByAndAssignedToIdAndSedeIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :created_by, :integer
    add_column :attachments, :assigned_to, :integer
    add_column :attachments, :sede_id, :integer
  end
end
