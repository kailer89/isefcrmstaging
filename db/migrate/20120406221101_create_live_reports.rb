class CreateLiveReports < ActiveRecord::Migration
  def change
    create_table :live_reports do |t|
      t.string :valor

      t.timestamps
    end
  end
end
