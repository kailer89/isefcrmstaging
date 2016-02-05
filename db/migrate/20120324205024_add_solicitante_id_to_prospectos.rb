class AddSolicitanteIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :solicitante_id, :integer
  end
end
