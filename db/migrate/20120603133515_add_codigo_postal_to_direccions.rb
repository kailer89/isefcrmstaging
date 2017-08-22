class AddCodigoPostalToDireccions < ActiveRecord::Migration
  def change
    add_column :direccions, :codigo_postal, :string
  end
end
