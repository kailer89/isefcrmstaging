class AddLatitudeAndLogitudeToMercadoMeta < ActiveRecord::Migration
  def change
    add_column :mercado_meta, :latitude, :float
    add_column :mercado_meta, :longitude, :float
  end
end
