class AddColumnasToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :columnas, :text
  end
end
