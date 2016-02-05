class AddMailCampanaToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :mail_campana, :string
  end
end
