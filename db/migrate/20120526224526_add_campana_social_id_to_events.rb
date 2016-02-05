class AddCampanaSocialIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :campana_social_id, :integer
  end
end
