class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.date :when_saved
      t.integer :created_by
      t.integer :user_id
      t.integer :sede_id
      t.integer :model_id
      t.string :model_name

      t.timestamps
    end
  end
end
