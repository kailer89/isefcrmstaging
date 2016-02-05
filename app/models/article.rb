class Article < ActiveRecord::Base
	has_many :comments, :as => :commentable, :dependent=>:destroy
	accepts_nested_attributes_for :comments, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true	
end
