class AddStatusDelAdmitidoIdToAdmitidos < ActiveRecord::Migration
  def change
    add_column :admitidos, :status_del_admitido_id, :integer
  end
end
