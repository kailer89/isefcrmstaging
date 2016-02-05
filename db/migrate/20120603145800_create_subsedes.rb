class CreateSubsedes < ActiveRecord::Migration
  def change
    create_table :subsedes do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :sede_id

      t.timestamps
    end
  end
end
