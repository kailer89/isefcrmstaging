class AddStatusDelExaminadoEntrevistumIdToExaminados < ActiveRecord::Migration
  def change
    add_column :examinados, :status_del_examinado_entrevistum_id, :integer
  end
end
