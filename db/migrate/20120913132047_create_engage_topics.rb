class CreateEngageTopics < ActiveRecord::Migration

  def change
    create_table "engage_topics", :force => true do |t|
      t.string   "title", :null => false
      t.text     "message"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "style", :limit => 16, :default => "question", :null => false
      t.integer  "user_id", :null => false
      t.string   "string"
      t.integer  "votes_count", :default => 0, :null => false
      t.string   "status", :limit => 16, :default => "pending",  :null => false
      t.integer  "comments_count", :default => 0, :null => false
      t.integer  "followers_count", :default => 0, :null => false
      t.boolean  "private", :default => false, :null => false
      t.timestamps
    end

    add_index "engage_topics", ["comments_count"]
    add_index "engage_topics", ["followers_count"]
    add_index "engage_topics", ["private"]
    add_index "engage_topics", ["status"]
    add_index "engage_topics", ["style"]
    add_index "engage_topics", ["user_id"]
    add_index "engage_topics", ["votes_count"]
  end


end
