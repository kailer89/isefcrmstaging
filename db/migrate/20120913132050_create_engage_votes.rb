class CreateEngageVotes < ActiveRecord::Migration
  def change
    create_table :engage_votes do |t|
      t.integer :user_id, :null => false
      t.integer :topic_id, :null => false

      t.timestamps
    end

    add_index :engage_votes, :user_id
    add_index :engage_votes, :topic_id
  end

end
