class AddTurnoIdToInteresBasico < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :turno_id, :integer
  end
end
