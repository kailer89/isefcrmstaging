class CreateStatics < ActiveRecord::Migration
  def change
    create_table :statics do |t|
      t.string :valor

      t.timestamps
    end
  end
end
