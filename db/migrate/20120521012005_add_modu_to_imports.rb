class AddModuToImports < ActiveRecord::Migration
  def change
    add_column :imports, :modu, :string
  end
end
