class AddPeriodoParaIngresarIdToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :periodo_para_ingresar_id, :integer
  end
end
