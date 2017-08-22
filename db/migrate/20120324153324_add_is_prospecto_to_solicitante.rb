class AddIsProspectoToSolicitante < ActiveRecord::Migration
  def change
    add_column :solicitantes, :isprospecto, :boolean
  end
end
