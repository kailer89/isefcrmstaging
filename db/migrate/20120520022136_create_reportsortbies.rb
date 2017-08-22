class CreateReportsortbies < ActiveRecord::Migration
  def change
    create_table :reportsortbies do |t|
      t.string :fieldname
      t.integer :report_id

      t.timestamps
    end
  end
end
