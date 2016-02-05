class CreateStatusDelTramiteDeBecas < ActiveRecord::Migration
  def change
    create_table :status_del_tramite_de_becas do |t|
      t.string :valor

      t.timestamps
    end
  end
end
