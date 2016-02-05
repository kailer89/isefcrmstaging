class CreateAccionEstrategicas < ActiveRecord::Migration
  def change
    create_table :accion_estrategicas do |t|
      t.string :accion_promocional_1
      t.text :descipcion_de_la_accion_1
      t.string :status_de_la_accion_1
      t.date :fecha_para_llevarlo_a_cabo_1
      t.string :responsable_de_llevarlo_a_cabo_1
      t.text :comentarios_de_seguimiento_1
      t.string :accion_promocional_2
      t.text :descripcion_de_la_accion_2
      t.string :status_de_la_accion_2
      t.date :fecha_para_llevarlo_a_cabo_2
      t.string :responsable_de_llevarlo_a_cabo_2
      t.text :comentarios_de_seguimiento_2

      t.timestamps
    end
  end
end
