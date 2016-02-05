class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.string :filename
      t.string :module
      t.text :description
      t.datetime :whenimported

      t.timestamps
    end
  end
end
