class CreateLlamadas1 < ActiveRecord::Migration
  def up
    create_table :llamadas do |t|
      t.string :asunto
      t.date :inicio_de_la_llamada
      t.time :tiempo_de_inicio
      t.date :fin_de_la_llamada
      t.time :tiempo_de_fin
      t.float :duracion
      t.string :estado
      t.boolean :aviso
      t.string :model_name
      t.integer :model_id   

      t.timestamps
    end	
  end

  def down
     drop_table :llamadas
  end
end
