class AddProgramaIdAndNivelIdToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :programa_id, :integer
    add_column :correos, :nivel_id, :integer
  end
end
