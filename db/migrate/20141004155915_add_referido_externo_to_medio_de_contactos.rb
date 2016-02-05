class AddReferidoExternoToMedioDeContactos < ActiveRecord::Migration
  def change
    add_column :medio_de_contactos, :referido_externo, :string
  end
end
