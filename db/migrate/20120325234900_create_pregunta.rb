class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.string :ambito_de_la_pregunta
      t.text :pregunta
      t.text :causa_de_la_pregunta
      t.text :alternativas_de_respuestas
      t.text :respuesta
      t.string :pregunta_planteada_por
      t.string :resuelta_por
      t.boolean :pregunta_frecuente

      t.timestamps
    end
  end
end
