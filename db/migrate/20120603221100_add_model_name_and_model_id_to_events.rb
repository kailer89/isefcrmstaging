class AddModelNameAndModelIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :model_name, :string
    add_column :events, :model_id, :integer
  end
end
