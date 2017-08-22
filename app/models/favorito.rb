class Favorito < ActiveRecord::Base
  has_many :barra_favoritos
  has_many :users, :through => :barra_favoritos	
end
