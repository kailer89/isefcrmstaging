class AddModelNameAndModelIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :model_name, :string
    add_column :posts, :model_id, :integer
  end
end
