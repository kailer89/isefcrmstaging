class AddTotalDeProspectosObtenidosToMiPlanEstrategicoDePromocionPeps < ActiveRecord::Migration
  def change
    add_column :mi_plan_estrategico_de_promocion_peps, :total_de_prospectos_obtenidos, :integer
    add_column :mi_plan_estrategico_de_promocion_peps, :no_solicitantes, :integer
    add_column :mi_plan_estrategico_de_promocion_peps, :nombre_de_los_solicitantes, :text
    add_column :mi_plan_estrategico_de_promocion_peps, :no_de_entrevistados_examinados, :integer
    add_column :mi_plan_estrategico_de_promocion_peps, :nombre_de_los_entrevistados_examinados, :text
    add_column :mi_plan_estrategico_de_promocion_peps, :no_de_admitidos, :integer
    add_column :mi_plan_estrategico_de_promocion_peps, :nombre_de_los_admitidos, :text
    add_column :mi_plan_estrategico_de_promocion_peps, :no_de_inscritos, :integer
    add_column :mi_plan_estrategico_de_promocion_peps, :nombre_de_los_inscritos, :text  
    add_column :mi_plan_estrategico_de_promocion_peps, :observaciones, :text      
  end
end
