class AddModelNameToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :model_name, :string
  end
end
