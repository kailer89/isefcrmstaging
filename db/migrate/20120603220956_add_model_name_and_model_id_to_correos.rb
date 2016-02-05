class AddModelNameAndModelIdToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :model_name, :string
    add_column :correos, :model_id, :integer
  end
end
