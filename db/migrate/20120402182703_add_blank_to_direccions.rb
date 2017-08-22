class AddBlankToDireccions < ActiveRecord::Migration
  def change
    add_column :direccions, :blank, :string
  end
end
