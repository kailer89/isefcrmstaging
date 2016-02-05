class CreateProgramaDeInteres < ActiveRecord::Migration
  def change
    create_table :programa_de_interes do |t|
      t.string :valor

      t.timestamps
    end
  end
end
