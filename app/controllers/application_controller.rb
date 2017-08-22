class ApplicationController < ActionController::Base
	before_filter :iswriteteable
  protect_from_forgery


  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      
    else
      "application"
    end
  end

  def iswriteteable
    logger.debug "--------------------------------0"
    #if true == false #temporary till uploads of roles are done
      logger.debug "action"
      logger.debug request.path_parameters[:action]
      logger.debug "action"

      logger.debug request.path_parameters[:controller].include? "admin"
      
      logger.debug "--------------------------------1"
if request.path_parameters[:action].include? "web" 
  return true
end

      if not request.path_parameters[:controller].include? "efectividad" 
      if not request.path_parameters[:controller].include? "console" 
      if not request.path_parameters[:controller].include? "configuraciones" 
      if not request.path_parameters[:controller].include? "imports" 
      if not request.path_parameters[:controller].include? "admin" 
      
        logger.debug "--------------------------------2"
        if not request.path_parameters[:controller].include? "metas_globales"
          logger.debug "--------------------------------3"
          if not request.path_parameters[:controller].include? "devise" 
            logger.debug "--------------------------------4"
            if current_user != nil
              logger.debug "--------------------------------5"
              if current_user.role != nil
                logger.debug "--------------------------------6"
                
                @rol = Role.where(:id=>current_user.role).first
                logger.debug "--------------------------------7" + current_user.role
                if @rol != nil
                  logger.debug "--------------------------------8"
                #logger.debug request.path_parameters[:action]
                  @rolepermisions = RolePermision.where(:role_id=>@rol.id,:objeto=>request.path_parameters[:controller])
                  logger.debug "--------------------------------9"
                  if @rolepermisions.first.permiso == nil
                    logger.debug "--------------------------------10"
                      @rolepermisions.permiso ="Lectura"
                  end
                  if @rolepermisions != nil
                    logger.debug "--------------------------------11"
                        if @rolepermisions.first.permiso == "Escritura"
                          logger.debug "--------------------------------12"
                            return true
                        end
                        if @rolepermisions.first.permiso == "Lectura"
                          logger.debug "--------------------------------13"
                          if (request.path_parameters[:action] == "edit") or (request.path_parameters[:action] == "new")
                            logger.debug "--------------------------------14"
                            #redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            redirect_to :back, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          end
                          logger.debug "--------------------------------15"
                        	model = eval(request.path_parameters[:controller].singularize.camelize)
                        	if model.column_names.include? "user_id"
                            logger.debug "--------------------------------16"
                	        	if model.where(:id=>request.path_parameters[:id], :user_id => current_user.id)
                              logger.debug "--------------------------------17"
                	        		return true
                	        	end
                        	end
                          logger.debug "--------------------------------18"

                        	if (request.path_parameters[:action] == "index") or (request.path_parameters[:action] == "show") or (request.path_parameters[:action] == "force_redirect")
                            logger.debug "--------------------------------19"
                        		return true
                        	else
                            logger.debug "--------------------------------20"
                        		#redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            redirect_to :back, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                        	end
                        end
                        logger.debug "--------------------------------21"
                        
                        if @rolepermisions.first.permiso == "No disponible"
                          logger.debug "--------------------------------22"
                          if (request.path_parameters[:action] == "index") or (request.path_parameters[:action] == "show") or (request.path_parameters[:action] == "force_redirect")
                            logger.debug "--------------------------------23"
                            redirect_to home_path, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          else
                            logger.debug "--------------------------------24"
                            redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          end
                        end        
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
end
end
end

