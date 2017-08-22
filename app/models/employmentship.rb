class Employmentship < ActiveRecord::Base
  belongs_to :user
  belongs_to :empleado, :class_name => "User", :foreign_key => "empleado_id"

end
