class CreateStatusDelExaminadoEntrevista < ActiveRecord::Migration
  def change
    create_table :status_del_examinado_entrevista do |t|
      t.string :valor

      t.timestamps
    end
  end
end
