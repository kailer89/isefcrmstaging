class AddBlankToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :blank, :string
  end
end
