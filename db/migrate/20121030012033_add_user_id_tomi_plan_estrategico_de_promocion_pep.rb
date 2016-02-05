class AddUserIdTomiPlanEstrategicoDePromocionPep < ActiveRecord::Migration
  def change
    add_column :mi_plan_estrategico_de_promocion_peps, :user_id, :integer
  end
end
