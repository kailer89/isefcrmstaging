class AddPlanDeVentumIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :plan_de_ventum_id, :integer
  end
end
