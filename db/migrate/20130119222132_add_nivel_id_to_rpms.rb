class AddNivelIdToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :nivel_id, :string
  end
end
