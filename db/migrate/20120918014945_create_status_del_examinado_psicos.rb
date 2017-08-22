class CreateStatusDelExaminadoPsicos < ActiveRecord::Migration
  def change
    create_table :status_del_examinado_psicos do |t|
      t.string :valor

      t.timestamps
    end
  end
end
