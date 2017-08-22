class AddModelINameAndModelIdToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :model_name, :string
    add_column :memos, :model_id, :integer
  end
end
