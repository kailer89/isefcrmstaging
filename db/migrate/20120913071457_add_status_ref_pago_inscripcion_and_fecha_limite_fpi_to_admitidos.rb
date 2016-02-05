class AddStatusRefPagoInscripcionAndFechaLimiteFpiToAdmitidos < ActiveRecord::Migration
  def change
    add_column :admitidos, :status_ref_pago_insc, :integer
    add_column :admitidos, :fecha_lim_fpi, :date
  end
end
