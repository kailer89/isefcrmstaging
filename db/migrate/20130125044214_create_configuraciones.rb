class CreateConfiguraciones < ActiveRecord::Migration
  def change
    create_table :configuraciones do |t|
      t.boolean :mostrar_archivados
      t.integer :user_id

      t.timestamps
    end
  end
end
