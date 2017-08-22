class AddNivelIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :nivel_id, :integer
  end
end
