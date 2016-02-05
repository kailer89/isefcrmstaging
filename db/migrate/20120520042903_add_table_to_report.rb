class AddTableToReport < ActiveRecord::Migration
  def change
    add_column :reports, :table, :string
  end
end
