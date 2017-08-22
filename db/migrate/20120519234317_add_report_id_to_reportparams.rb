class AddReportIdToReportparams < ActiveRecord::Migration
  def change
    add_column :reportparams, :report_id, :integer
  end
end
