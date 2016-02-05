class Memo < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede
	has_many :attachments
end
