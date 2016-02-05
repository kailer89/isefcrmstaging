class CreateReportDirections < ActiveRecord::Migration
  def change
    create_table :report_directions do |t|
      t.string :fieldname
      t.string :fieldvalue

      t.timestamps
    end
  end
end
