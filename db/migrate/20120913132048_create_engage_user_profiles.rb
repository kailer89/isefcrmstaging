class CreateEngageUserProfiles < ActiveRecord::Migration

  def change
    create_table "engage_user_profiles", :force => true do |t|
      t.integer  "user_id", :null => false
      t.boolean  "admin", :default => false, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "username"
      t.string   "email"
    end

    add_index "engage_user_profiles", ["user_id"]
  end
end
