class CreateReportlines < ActiveRecord::Migration
  def change
    create_table :reportlines do |t|
      t.string :nombre_del_campo
      t.string :modulo
      t.integer :report_id
      t.string :campo
      t.string :filtro
      t.string :valorcampo

      t.timestamps
    end
  end
end
