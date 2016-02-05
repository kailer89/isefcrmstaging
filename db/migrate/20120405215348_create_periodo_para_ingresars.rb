class CreatePeriodoParaIngresars < ActiveRecord::Migration
  def change
    create_table :periodo_para_ingresars do |t|
      t.string :valor

      t.timestamps
    end
  end
end
