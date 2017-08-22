class AddSubSedeIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :subsede_id, :integer
  end
end
