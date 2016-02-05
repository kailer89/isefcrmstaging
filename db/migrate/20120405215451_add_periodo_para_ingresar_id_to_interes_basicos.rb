class AddPeriodoParaIngresarIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :periodo_para_ingresar_id, :integer
  end
end
