class AddProgramaIdToCasos < ActiveRecord::Migration
  def change
    add_column :casos, :programa_id, :integer
  end
end
