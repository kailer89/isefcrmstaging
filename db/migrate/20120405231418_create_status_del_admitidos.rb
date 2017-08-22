class CreateStatusDelAdmitidos < ActiveRecord::Migration
  def change
    create_table :status_del_admitidos do |t|
      t.string :valor

      t.timestamps
    end
  end
end
