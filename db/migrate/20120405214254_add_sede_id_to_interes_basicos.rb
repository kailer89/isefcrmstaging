class AddSedeIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :sede_id, :integer
  end
end
