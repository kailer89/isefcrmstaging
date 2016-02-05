class AddDateValueToReportparams < ActiveRecord::Migration
  def change
    add_column :reportparams, :date_value, :string
  end
end
