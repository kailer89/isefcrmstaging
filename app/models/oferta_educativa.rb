class OfertaEducativa < ActiveRecord::Base
		belongs_to :sede
	belongs_to :nivel
	belongs_to :programa
end
