class AddModalidadIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :modalidad_id, :integer
  end
end
