class RenameMercadoMetaIdFromEstrategiaPromocional < ActiveRecord::Migration
  def up
  	rename_column :estrategia_promocionals, :mercado_meta_id, :mercado_metum_id
  end

  def down
  end
end
