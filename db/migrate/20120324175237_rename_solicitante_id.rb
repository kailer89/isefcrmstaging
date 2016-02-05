class RenameSolicitanteId < ActiveRecord::Migration
  def up
  	rename_column :compartidos, :soliticante_id, :solicitante_id
  end

  def down
  end
end
