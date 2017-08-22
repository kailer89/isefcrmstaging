class Event < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede	
	belongs_to :campana_social
end
