class AddProgramaIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :programa_id, :integer
  end
end
