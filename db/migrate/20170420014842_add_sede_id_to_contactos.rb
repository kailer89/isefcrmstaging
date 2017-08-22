class AddSedeIdToContactos < ActiveRecord::Migration
  def change
    add_column :contactos, :sede_id, :int
  end
end
