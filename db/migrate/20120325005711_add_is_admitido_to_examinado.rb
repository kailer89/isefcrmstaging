class AddIsAdmitidoToExaminado < ActiveRecord::Migration
  def change
    add_column :examinados, :isadmitido, :boolean
  end
end
