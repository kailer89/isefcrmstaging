class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
