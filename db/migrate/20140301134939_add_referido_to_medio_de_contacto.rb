class AddReferidoToMedioDeContacto < ActiveRecord::Migration
  def change
    add_column :medio_de_contactos, :Referido, :integer
  end
end
