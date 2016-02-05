class AddIsInscritoToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :isinscrito, :boolean
  end
end
