class AddUserIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :user_id, :int
  end
end
