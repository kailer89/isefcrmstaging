class AddNacionalidadIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :nacionalidad_id, :integer
  end
end
