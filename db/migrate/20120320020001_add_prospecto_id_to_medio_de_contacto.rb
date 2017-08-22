class AddProspectoIdToMedioDeContacto < ActiveRecord::Migration
  def change
    add_column :medio_de_contactos, :prospecto_id, :integer
  end
end
