class CampanaSocial < ActiveRecord::Base
	has_many :events, :dependent=>:destroy
	has_many :posts, :dependent=>:destroy
	has_many :correos,:dependent=>:destroy
	accepts_nested_attributes_for :events, :reject_if => lambda { |a| a[:mensaje].blank? }, :allow_destroy => true	
	accepts_nested_attributes_for :posts, :reject_if => lambda { |a| a[:mensaje].blank? }, :allow_destroy => true	
	accepts_nested_attributes_for :correos, :reject_if => lambda { |a| a[:maildata].blank? }, :allow_destroy => true	
end
