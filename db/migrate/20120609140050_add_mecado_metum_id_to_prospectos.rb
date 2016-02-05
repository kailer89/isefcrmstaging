class AddMecadoMetumIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :mercado_metum_id, :integer
  end
end
