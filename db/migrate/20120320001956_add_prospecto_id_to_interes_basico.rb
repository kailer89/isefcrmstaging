class AddProspectoIdToInteresBasico < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :prospecto_id, :integer
  end
end
