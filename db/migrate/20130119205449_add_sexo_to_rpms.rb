class AddSexoToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :sexo, :boolean
  end
end
