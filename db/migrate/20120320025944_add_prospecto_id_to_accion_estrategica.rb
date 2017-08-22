class AddProspectoIdToAccionEstrategica < ActiveRecord::Migration
  def change
    add_column :accion_estrategicas, :prospecto_id, :integer
  end
end
