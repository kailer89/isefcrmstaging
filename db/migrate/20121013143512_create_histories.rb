class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :model_name
      t.string :model_id
      t.text :action
      t.date :when

      t.timestamps
    end
  end
end
