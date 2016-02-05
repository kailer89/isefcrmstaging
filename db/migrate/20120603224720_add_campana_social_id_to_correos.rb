class AddCampanaSocialIdToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :campana_social_id, :integer
  end
end
