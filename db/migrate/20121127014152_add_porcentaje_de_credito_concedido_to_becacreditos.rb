class AddPorcentajeDeCreditoConcedidoToBecacreditos < ActiveRecord::Migration
  def change
    add_column :becacreditos, :porcentaje_de_credito_concedido, :float
  end
end
