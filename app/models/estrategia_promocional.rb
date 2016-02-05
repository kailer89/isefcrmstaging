class EstrategiaPromocional < ActiveRecord::Base
	has_many :comentarios_estrategiums, :dependent => :destroy
	belongs_to :mercado_meta

  	accepts_nested_attributes_for :comentarios_estrategiums, :reject_if =>lambda { |a| a[:comentario_del_seguimiento].blank? },:allow_destroy => true
end
