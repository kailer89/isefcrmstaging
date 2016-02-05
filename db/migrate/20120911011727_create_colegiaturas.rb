class CreateColegiaturas < ActiveRecord::Migration
  def change
    create_table :colegiaturas do |t|
      t.string :periodo_anual
      t.integer :sede_id
      t.integer :nivel_id
      t.integer :programa_id
      t.string :cuota_de_inscripcion_para_esta_sede
      t.string :cuota_mensual_para_esta_sede
      t.string :tipo_y_no_de_pagos_de_inscripcion
      t.string :tipo_y_no_de_pagos_de_colegiatura

      t.timestamps
    end
  end
end
