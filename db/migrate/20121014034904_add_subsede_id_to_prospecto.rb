class AddSubsedeIdToProspecto < ActiveRecord::Migration
  def change
    add_column :prospectos, :subsede_id, :integer
  end
end
