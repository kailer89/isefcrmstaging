class AddGrupoIdToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :grupo_id, :integer
  end
end
