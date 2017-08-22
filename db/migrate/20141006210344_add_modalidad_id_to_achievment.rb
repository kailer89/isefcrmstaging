class AddModalidadIdToAchievment < ActiveRecord::Migration
  def change
    add_column :achievments, :modalidad_id, :integer
  end
end
