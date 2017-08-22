class CreateNivels < ActiveRecord::Migration
  def change
    create_table :nivels do |t|
      t.string :valor

      t.timestamps
    end
  end
end
