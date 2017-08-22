class Role < ActiveRecord::Base
	has_many :role_permisions, :dependent => :destroy
	accepts_nested_attributes_for :role_permisions, :reject_if => lambda { |a| a[:objeto].blank? }, :allow_destroy => true
end
