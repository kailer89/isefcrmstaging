class CreateEstrategiaPromocionals < ActiveRecord::Migration
  def change
    create_table :estrategia_promocionals do |t|
      t.string :status_de_la_estrategia
      t.date :fecha_para_llevarla_a_cabo
      t.string :reponsable_para_llevarla_a_cabo
      t.text :descripcion_detallada
      t.integer :mercado_meta_id

      t.timestamps
    end
  end
end
