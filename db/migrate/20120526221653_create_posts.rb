class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :mensaje
      t.date :whensaved
      t.integer :created_by
      t.integer :user_id
      t.integer :sede_id

      t.timestamps
    end
  end
end
