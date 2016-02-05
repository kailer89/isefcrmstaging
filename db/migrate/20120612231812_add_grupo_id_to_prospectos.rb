class AddGrupoIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :grupo_id, :integer
  end
end
