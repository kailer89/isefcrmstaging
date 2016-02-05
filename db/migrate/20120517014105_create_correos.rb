class CreateCorreos < ActiveRecord::Migration
  def change
    create_table :correos do |t|
      t.string :nombredelmail
      t.text :maildata
      t.datetime :fechaparaenviar

      t.timestamps
    end
  end
end
