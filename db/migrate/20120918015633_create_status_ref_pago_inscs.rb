class CreateStatusRefPagoInscs < ActiveRecord::Migration
  def change
    create_table :status_ref_pago_inscs do |t|
      t.string :valor

      t.timestamps
    end
  end
end
