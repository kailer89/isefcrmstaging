class CreatePurges < ActiveRecord::Migration
  def change
    create_table :purges do |t|
      t.string :name

      t.timestamps
    end
  end
end
