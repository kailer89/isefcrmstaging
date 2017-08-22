class AddCampanaSocialIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :campana_social_id, :integer
  end
end
