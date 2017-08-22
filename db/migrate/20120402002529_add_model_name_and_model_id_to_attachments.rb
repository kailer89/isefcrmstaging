class AddModelNameAndModelIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :model_name, :string
    add_column :attachments, :model_id, :integer
  end
end
