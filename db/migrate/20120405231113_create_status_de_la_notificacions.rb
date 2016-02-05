class CreateStatusDeLaNotificacions < ActiveRecord::Migration
  def change
    create_table :status_de_la_notificacions do |t|
      t.string :valor

      t.timestamps
    end
  end
end
