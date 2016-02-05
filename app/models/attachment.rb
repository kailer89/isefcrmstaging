class Attachment < ActiveRecord::Base
	belongs_to :tarea
	belongs_to :memo
	belongs_to :user
	belongs_to :sede

	mount_uploader :name, AttachmentUploader
end
