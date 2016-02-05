class AddCreatedByAndUserIdAndSedeIdToCampanaSocial < ActiveRecord::Migration
  def change
    add_column :campana_socials, :created_by, :integer
    add_column :campana_socials, :user_id, :integer
    add_column :campana_socials, :sede_id, :integer
  end
end
