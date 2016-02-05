class AddOrdenToParamsortbies < ActiveRecord::Migration
  def change
    add_column :reportsortbies, :orden, :string
  end
end
