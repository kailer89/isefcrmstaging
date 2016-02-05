class CreateEfectividads < ActiveRecord::Migration
  def change
    create_table :efectividads do |t|
      t.string :valor

      t.timestamps
    end
  end
end
