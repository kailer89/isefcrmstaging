class CreateInteresAcademicos < ActiveRecord::Migration
  def change
    create_table :interes_academicos do |t|
      t.text :opcion_1
      t.text :opcion_2
      t.text :opcion_3
      t.integer :prospecto_id

      t.timestamps
    end
  end
end
