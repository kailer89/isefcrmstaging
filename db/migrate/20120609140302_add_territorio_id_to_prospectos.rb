class AddTerritorioIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :territorio_id, :integer
  end
end
