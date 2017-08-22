class AddProgramaDeInteresIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :programa_de_intere_id, :integer
  end
end
