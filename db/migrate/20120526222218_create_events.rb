class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :mensaje
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :donde
      t.date :whensaved
      t.integer :created_by
      t.integer :user_id
      t.integer :sede_id

      t.timestamps
    end
  end
end
