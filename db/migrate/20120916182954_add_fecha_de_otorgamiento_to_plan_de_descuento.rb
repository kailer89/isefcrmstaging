class AddFechaDeOtorgamientoToPlanDeDescuento < ActiveRecord::Migration
  def change
    add_column :plan_de_descuentos, :fecha_de_otorgamiento, :date
  end
end
