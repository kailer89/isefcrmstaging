class AddUserIdToAchievments < ActiveRecord::Migration
  def change
    add_column :achievments, :user_id, :integer
  end
end
