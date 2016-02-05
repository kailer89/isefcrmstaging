class AddTipoDeAdmisionIdToSolicitantes < ActiveRecord::Migration
  def change
    add_column :solicitantes, :tipo_de_admision_id, :integer
  end
end
