class CreateTipoDeAdmisions < ActiveRecord::Migration
  def change
    create_table :tipo_de_admisions do |t|
      t.string :valor

      t.timestamps
    end
  end
end
