class RenameMercadoMetaIdFromFinalidadCultivos < ActiveRecord::Migration
  def up
  	rename_column :finalidad_cultivos, :mercado_meta_id, :mercado_metum_id
  end

  def down
  end
end
