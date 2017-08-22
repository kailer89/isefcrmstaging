class AddStatusDePagoDeExamenDeAdmisionIdToSolicitantes < ActiveRecord::Migration
  def change
    add_column :solicitantes, :status_de_pago_de_examen_de_admision_id, :integer
  end
end
