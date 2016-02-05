class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :nombre
      t.text :descripcion
      t.string :nivel

      t.timestamps
    end
  end
end
