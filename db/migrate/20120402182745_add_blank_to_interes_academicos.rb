class AddBlankToInteresAcademicos < ActiveRecord::Migration
  def change
    add_column :interes_academicos, :blank, :string
  end
end
