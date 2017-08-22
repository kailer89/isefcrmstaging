class AddFilterToReportparams < ActiveRecord::Migration
  def change
    add_column :reportparams, :filter, :string
  end
end
