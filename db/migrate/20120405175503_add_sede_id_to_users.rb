class AddSedeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sede_id, :integer
  end
end
