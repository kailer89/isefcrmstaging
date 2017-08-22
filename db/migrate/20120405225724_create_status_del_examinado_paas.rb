class CreateStatusDelExaminadoPaas < ActiveRecord::Migration
  def change
    create_table :status_del_examinado_paas do |t|
      t.string :valor

      t.timestamps
    end
  end
end
