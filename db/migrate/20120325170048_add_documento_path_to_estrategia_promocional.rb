class AddDocumentoPathToEstrategiaPromocional < ActiveRecord::Migration
  def change
    add_column :estrategia_promocionals, :documento_path, :string
  end
end
