class CreateStatusDeInteresDeProspectoValidados < ActiveRecord::Migration
  def change
    create_table :status_de_interes_de_prospecto_validados do |t|
      t.string :valor

      t.timestamps
    end
  end
end
