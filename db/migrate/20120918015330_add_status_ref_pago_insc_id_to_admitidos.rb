class AddStatusRefPagoInscIdToAdmitidos < ActiveRecord::Migration
  def change
    add_column :admitidos, :status_ref_pago_insc_id, :integer
  end
end
