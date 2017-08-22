class Report < ActiveRecord::Base
	serialize :column_names
	has_many :reportparams, :dependent=>:destroy
	has_many :reportsortbies, :dependent=>:destroy
	has_many :reportlines, :dependent=>:destroy
	accepts_nested_attributes_for :reportparams, :reject_if => lambda { |a| a[:fieldname].blank? }, :allow_destroy => true
	accepts_nested_attributes_for :reportsortbies, :reject_if => lambda { |a| a[:fieldname].blank? }, :allow_destroy => true
	accepts_nested_attributes_for :reportlines, :reject_if => lambda { |a| a[:modulo].blank? }, :allow_destroy => true
end
