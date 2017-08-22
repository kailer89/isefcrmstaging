class CreateNacionalidads < ActiveRecord::Migration
  def change
    create_table :nacionalidads do |t|
      t.string :nacionalidad
      t.string :pais

      t.timestamps
    end
  end
end
