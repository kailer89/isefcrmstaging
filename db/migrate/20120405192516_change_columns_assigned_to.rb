class ChangeColumnsAssignedTo < ActiveRecord::Migration
  def up
  	rename_column :prospectos, :assigned_to, :user_id
  	rename_column :memos, :assigned_to, :user_id
  	rename_column :llamadas, :assigned_to, :user_id
  	rename_column :tareas, :assigned_to, :user_id
  	rename_column :attachments, :assigned_to, :user_id
  end

  def down
  	rename_column :prospectos, :user_id, :assigned_to
  	rename_column :memos, :user_id, :assigned_to
  	rename_column :llamadas, :user_id, :assigned_to
  	rename_column :tareas, :user_id, :assigned_to  	
  	rename_column :attachments, :user_id, :assigned_to  	
  end
end
