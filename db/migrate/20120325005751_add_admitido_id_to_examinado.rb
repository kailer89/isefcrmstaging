class AddAdmitidoIdToExaminado < ActiveRecord::Migration
  def change
    add_column :examinados, :admitido_id, :integer
  end
end
