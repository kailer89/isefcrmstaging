class CreateRpms < ActiveRecord::Migration
  def change
    create_table :rpms do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
