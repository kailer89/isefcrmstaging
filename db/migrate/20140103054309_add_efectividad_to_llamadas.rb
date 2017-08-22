class AddEfectividadToLlamadas < ActiveRecord::Migration
  def change
    add_column :llamadas, :efectividad, :string
  end
end
