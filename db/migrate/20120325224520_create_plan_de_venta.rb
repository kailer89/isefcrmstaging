class CreatePlanDeVenta < ActiveRecord::Migration
  def change
    create_table :plan_de_venta do |t|
      t.string :programa
      t.decimal :cuota_de_inscripcion
      t.string :periodo_de_pago_de_inscripcion
      t.decimal :cuota_de_colegiatura
      t.string :meses_de_pago_de_colegiatura
      t.integer :sede_id
      t.string :subsede
      t.date :fecha_de_apertura
      t.string :periodo_Banner_de_apertura
      t.string :nombre_del_asesor_a_cargo
      t.text :comentarios_generalidades_de_apertura
      t.string :meta_de_enteros
      t.string :status_de_la_apertura
      t.string :avance_en_enteros
      t.date :fecha_de_apertura
      t.string :porcentaje_de_cumplimiento_meta_vs_avance_en_enteros
      t.string :viabilidad_de_esta_apertura
      t.text :comentarios_meta
      t.string :medio_promocional
      t.text :descripcion_especificaciones_detalladas_del_medio_promocional
      t.string :cantidad
      t.decimal :inversion
      t.decimal :viaticos_de_promocion_estimados
      t.decimal :vales_de_gasolina
      t.decimal :total_de_inversion_en_medios_y_viaticos_para_esta_apertura

      t.timestamps
    end
  end
end
