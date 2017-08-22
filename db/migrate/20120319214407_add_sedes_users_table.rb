class AddSedesUsersTable < ActiveRecord::Migration
  def self.up
    create_table :sedes_users, :id => false  do |t|
      t.integer :sede_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :sedes_users
  end
end
