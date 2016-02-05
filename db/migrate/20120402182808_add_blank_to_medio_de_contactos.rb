class AddBlankToMedioDeContactos < ActiveRecord::Migration
  def change
    add_column :medio_de_contactos, :blank, :string
  end
end
