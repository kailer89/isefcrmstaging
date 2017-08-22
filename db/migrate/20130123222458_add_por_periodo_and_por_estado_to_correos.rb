class AddPorPeriodoAndPorEstadoToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :por_periodo, :integer
    add_column :correos, :por_estado, :integer
  end
end
