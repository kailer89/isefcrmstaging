class AddStatusDeAdmisionIdToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :status_de_admision_id, :integer
  end
end
