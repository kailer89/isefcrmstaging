class AddInscritoIdToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :inscrito_id, :integer
  end
end
