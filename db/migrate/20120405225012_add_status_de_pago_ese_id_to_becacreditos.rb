class AddStatusDePagoEseIdToBecacreditos < ActiveRecord::Migration
  def change
    add_column :becacreditos, :status_de_pago_ese_id, :integer
  end
end
