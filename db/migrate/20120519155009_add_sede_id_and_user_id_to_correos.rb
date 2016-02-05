class AddSedeIdAndUserIdToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :sede_id, :integer
    add_column :correos, :user_id, :integer
  end
end
