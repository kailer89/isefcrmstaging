class Jojojo < ActiveRecord::Migration
  def change
    add_column :reportparams, :column_names, :text
  end
end
