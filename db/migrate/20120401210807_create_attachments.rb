class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.integer :tarea_id
      t.integer :memo_id

      t.timestamps
    end
  end
end
