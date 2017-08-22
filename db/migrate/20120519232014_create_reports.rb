class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
