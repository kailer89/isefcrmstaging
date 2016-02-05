class AddIsSolicitanteToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :issolicitante, :boolean
  end
end
