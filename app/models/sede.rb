class Sede < ActiveRecord::Base
	#has_many :users
  has_many :users
  has_many :tarea
  has_many :memo
  has_many :interes_basicos
  has_many :llamada
  has_many :attachment	
  has_many :subsedes, :dependent => :destroy
	has_many :prospectos
  has_many :tweets
	belongs_to :plan_de_venta
  has_many :achievments
  has_many :oferta_educativa
  has_many :colegiatura
  has_many :division_territorials
end
