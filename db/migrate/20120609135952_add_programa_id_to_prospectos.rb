class AddProgramaIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :programa_id, :integer
  end
end
