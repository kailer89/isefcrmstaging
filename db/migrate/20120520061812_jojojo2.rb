class Jojojo2 < ActiveRecord::Migration
  def change
    add_column :reports, :column_names, :text
  end
end
