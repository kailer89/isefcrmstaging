class CreateUltimoGradoDeEstudios < ActiveRecord::Migration
  def change
    create_table :ultimo_grado_de_estudios do |t|
      t.string :grado_de_estudio

      t.timestamps
    end
  end
end
