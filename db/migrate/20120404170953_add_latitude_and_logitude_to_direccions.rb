class AddLatitudeAndLogitudeToDireccions < ActiveRecord::Migration
  def change
    add_column :direccions, :latitude, :float
    add_column :direccions, :longitude, :float
  end
end
