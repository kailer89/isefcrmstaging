class CreateCompartidos < ActiveRecord::Migration
  def change
    create_table :compartidos do |t|
      t.string :nombre
      t.integer :prospecto_id
      t.integer :soliticante_id

      t.timestamps
    end
  end
end
