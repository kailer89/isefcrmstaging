class CreateModalidads < ActiveRecord::Migration
  def change
    create_table :modalidads do |t|
      t.string :valor

      t.timestamps
    end
  end
end
