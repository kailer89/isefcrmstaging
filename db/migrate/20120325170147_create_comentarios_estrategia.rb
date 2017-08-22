class CreateComentariosEstrategia < ActiveRecord::Migration
  def change
    create_table :comentarios_estrategia do |t|
      t.text :comentario_del_seguimiento
      t.integer :estrategia_promocional_id

      t.timestamps
    end
  end
end
