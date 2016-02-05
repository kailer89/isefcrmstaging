class RemoveIsProspectoFromSolicitante < ActiveRecord::Migration
  def up
  	remove_column :solicitantes, :isprospecto
  end

  def down
  	add_column :solicitantes, :isprospecto, :boolean
  end
end
