class CreateReportparams < ActiveRecord::Migration
  def change
    create_table :reportparams do |t|
      t.string :nombre
      t.string :fieldname
      t.string :fieldvalue

      t.timestamps
    end
  end
end
