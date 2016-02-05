class AddStatusDeLaNoticiacionIdToAdmitidos < ActiveRecord::Migration
  def change
    add_column :admitidos, :status_de_la_notificacion_id, :integer
  end
end
