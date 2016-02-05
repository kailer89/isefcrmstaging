class Tarea < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede	
	has_many :attachments
	has_one :prospecto

	mount_uploader :attachment, TareasUploader
	
  	default_value_for :hora_de_inicio do
    Time.new.beginning_of_day
	end
  	default_value_for :hora_de_fin do
    Time.new.beginning_of_day
	end
end
