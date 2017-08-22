class BarraFavorito < ActiveRecord::Base
  belongs_to :favorito
  belongs_to :user	
  
  validates :favorito_id, :presence => true	
end
