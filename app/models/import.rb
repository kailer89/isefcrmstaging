class Import < ActiveRecord::Base
	mount_uploader :filename, ImportUploader
end
