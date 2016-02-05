class AddRolesPermisionsForSearches < ActiveRecord::Migration
  def up

  	Role.all.each do |rol|
  		permision = rol.role_permisions.build(:objeto=>'searches', :user_id=>1,:role_id=>rol.id)
  		permision.permiso = 'Escritura'
  		permision.save
  	end


  end

  def down
  end
end
