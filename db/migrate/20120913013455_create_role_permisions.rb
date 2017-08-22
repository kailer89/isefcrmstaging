class CreateRolePermisions < ActiveRecord::Migration
  def change
    create_table :role_permisions do |t|
      t.string :objeto
      t.string :permiso
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
