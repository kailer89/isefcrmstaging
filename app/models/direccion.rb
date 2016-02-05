class Direccion < ActiveRecord::Base
  	belongs_to :prospecto
	geocoded_by :street_address
	after_validation :geocode
 
	def street_address
		[calle, no_interior,no_exterior,colonia,delegacion_municipio].join(' , ')
	end  
end

