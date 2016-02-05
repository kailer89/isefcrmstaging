class AddStatusDeLaAccion1ToAccionEstrategicas < ActiveRecord::Migration
  def change
    add_column :accion_estrategicas, :status_de_la_acion_1_id, :integer
  end
end
