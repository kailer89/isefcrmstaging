class AddExaminadoIdToAdmitido < ActiveRecord::Migration
  def change
    add_column :admitidos, :examinado_id, :integer
  end
end
