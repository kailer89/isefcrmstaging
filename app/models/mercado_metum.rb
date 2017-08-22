class MercadoMetum < ActiveRecord::Base
	has_many :finalidad_cultivos, :dependent => :destroy
	has_many :prospectos
	has_many :estrategia_promocionals, :dependent => :destroy
	
  	accepts_nested_attributes_for :finalidad_cultivos, :reject_if =>lambda { |a| a[:finalidad_cultivo].blank? }, :allow_destroy => true
  	accepts_nested_attributes_for :estrategia_promocionals, :reject_if => :all_blank, :allow_destroy => true	

  	geocoded_by :street_address
	after_validation :geocode
 
	def street_address
		[calle, no_interior,no_exterior,colonia,delegacion_municipio,codigo_postal].join(' , ')
	end

end
