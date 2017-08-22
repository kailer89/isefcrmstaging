class CreateEngageFollowings < ActiveRecord::Migration
  def change
    create_table :engage_followings do |t|
      t.integer :user_id, :null => false
      t.integer :topic_id, :null => false
      t.string :token, :null => false, :default => 0

      t.timestamps
    end

    add_index :engage_followings, [:user_id, :topic_id], :unique => true
  end
end
