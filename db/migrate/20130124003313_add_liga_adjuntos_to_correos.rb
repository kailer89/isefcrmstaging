class AddLigaAdjuntosToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :liga_adjuntos, :text
  end
end
