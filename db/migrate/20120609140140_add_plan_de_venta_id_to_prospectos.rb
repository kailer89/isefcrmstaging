class AddPlanDeVentaIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :plan_de_venta_id, :integer
  end
end
