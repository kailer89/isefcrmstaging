class AddSedeIdToMiPlanEstrategicoDePromocionPep < ActiveRecord::Migration
  def up
  	add_column :mi_plan_estrategico_de_promocion_peps, :sede_id, :int
  end
end
