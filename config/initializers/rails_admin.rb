# RailsAdmin config file. Generated on December 09, 2012 12:58
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Proto Crm3', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['AccionEstrategica', 'Achievment', 'Admitido', 'Article', 'Attachment', 'Authentication', 'BarraFavorito', 'Becacredito', 'CampanaSocial', 'Caso', 'Colegiatura', 'ComentariosEstrategium', 'Comment', 'Compartido', 'Contacto', 'Correo', 'Dashboard', 'Direccion', 'DivisionTerritorial', 'Employmentship', 'EquipoDeAltoRendimiento', 'EquipoPromocion', 'EstrategiaPromocional', 'Event', 'Examinado', 'Favorito', 'FinalidadCultivo', 'Grupo', 'History', 'Home', 'Import', 'Inscrito', 'InteresAcademico', 'InteresBasico', 'LiveReport', 'Llamada', 'MedioDeContacto', 'Memo', 'MercadoMetum', 'Meta', 'MetasGlobale', 'MiPlanEstrategicoDePromocionPep', 'Modalidad', 'MunicipioDeLaPreparatoriaOUniversidadDeOrigen', 'NacionalDeApertura', 'Nacionalidad', 'Nivel', 'OfertaEducativa', 'PeriodoParaIngresar', 'PlanDeDescuento', 'PlanDeVentum', 'Post', 'Preguntum', 'PreparatoriaOUniversidadDeOrigen', 'Programa', 'ProgramaDeIntere', 'Prospecto', 'Purge', 'Report', 'Reportline', 'Reportparam', 'Reportsortby', 'Role', 'RolePermision', 'Rpm', 'Sede', 'Solicitante', 'Static', 'StatusDeAdmision', 'StatusDeEse', 'StatusDeInteresDeProspectoValidado', 'StatusDeLaInscripcion', 'StatusDeLaNotificacion', 'StatusDePagoDeExamenDeAdmision', 'StatusDePagoEse', 'StatusDelAdmitido', 'StatusDelExaminadoEntrevistum', 'StatusDelExaminadoPaa', 'StatusDelExaminadoPsico', 'StatusDelPagoDeLaInscripcion', 'StatusDelTramiteDeBeca', 'StatusRefPagoInsc', 'Subsede', 'Tarea', 'Territorio', 'TipoDeAdmision', 'Turno', 'Tweet', 'UltimoGradoDeEstudio', 'User']

  # Include specific models (exclude the others):
  # config.included_models = ['AccionEstrategica', 'Achievment', 'Admitido', 'Article', 'Attachment', 'Authentication', 'BarraFavorito', 'Becacredito', 'CampanaSocial', 'Caso', 'Colegiatura', 'ComentariosEstrategium', 'Comment', 'Compartido', 'Contacto', 'Correo', 'Dashboard', 'Direccion', 'DivisionTerritorial', 'Employmentship', 'EquipoDeAltoRendimiento', 'EquipoPromocion', 'EstrategiaPromocional', 'Event', 'Examinado', 'Favorito', 'FinalidadCultivo', 'Grupo', 'History', 'Home', 'Import', 'Inscrito', 'InteresAcademico', 'InteresBasico', 'LiveReport', 'Llamada', 'MedioDeContacto', 'Memo', 'MercadoMetum', 'Meta', 'MetasGlobale', 'MiPlanEstrategicoDePromocionPep', 'Modalidad', 'MunicipioDeLaPreparatoriaOUniversidadDeOrigen', 'NacionalDeApertura', 'Nacionalidad', 'Nivel', 'OfertaEducativa', 'PeriodoParaIngresar', 'PlanDeDescuento', 'PlanDeVentum', 'Post', 'Preguntum', 'PreparatoriaOUniversidadDeOrigen', 'Programa', 'ProgramaDeIntere', 'Prospecto', 'Purge', 'Report', 'Reportline', 'Reportparam', 'Reportsortby', 'Role', 'RolePermision', 'Rpm', 'Sede', 'Solicitante', 'Static', 'StatusDeAdmision', 'StatusDeEse', 'StatusDeInteresDeProspectoValidado', 'StatusDeLaInscripcion', 'StatusDeLaNotificacion', 'StatusDePagoDeExamenDeAdmision', 'StatusDePagoEse', 'StatusDelAdmitido', 'StatusDelExaminadoEntrevistum', 'StatusDelExaminadoPaa', 'StatusDelExaminadoPsico', 'StatusDelPagoDeLaInscripcion', 'StatusDelTramiteDeBeca', 'StatusRefPagoInsc', 'Subsede', 'Tarea', 'Territorio', 'TipoDeAdmision', 'Turno', 'Tweet', 'UltimoGradoDeEstudio', 'User']

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:



  ###  AccionEstrategica  ###

  # config.model 'AccionEstrategica' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your accion_estrategica.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :accion_promocional_1, :string 
  #     configure :descipcion_de_la_accion_1, :text 
  #     configure :status_de_la_accion_1, :string 
  #     configure :fecha_para_llevarlo_a_cabo_1, :date 
  #     configure :responsable_de_llevarlo_a_cabo_1, :string 
  #     configure :comentarios_de_seguimiento_1, :text 
  #     configure :accion_promocional_2, :string 
  #     configure :descripcion_de_la_accion_2, :text 
  #     configure :status_de_la_accion_2, :string 
  #     configure :fecha_para_llevarlo_a_cabo_2, :date 
  #     configure :responsable_de_llevarlo_a_cabo_2, :string 
  #     configure :comentarios_de_seguimiento_2, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :blank, :string 
  #     configure :status_de_la_acion_1_id, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Achievment  ###

  # config.model 'Achievment' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your achievment.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 
  #     configure :nivel, :belongs_to_association 
  #     configure :programa, :belongs_to_association 
  #     configure :turno, :belongs_to_association 
  #     configure :user, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :clave_del_programa, :string 
  #     configure :fecha_de_inicio, :date 
  #     configure :nivel_id, :integer         # Hidden 
  #     configure :programa_id, :integer         # Hidden 
  #     configure :ciudad_de_apertura, :string 
  #     configure :estado_de_apertura, :string 
  #     configure :modalidad, :string 
  #     configure :turno_id, :integer         # Hidden 
  #     configure :horarios, :string 
  #     configure :horarios_text, :text 
  #     configure :lugar_donde_se_impartiran_las_clases, :string 
  #     configure :asesor_a_cargo, :integer 
  #     configure :status_de_fecha_de_apertura, :string 
  #     configure :meta_de_alumnos, :string 
  #     configure :meta_de_enteros, :string 
  #     configure :viabilidad_de_la_apertura, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :fecha_exacta_que_abrio, :date 
  #     configure :alumnos_de_nuevo_ingreso, :string 
  #     configure :enteros_de_nuevo_ingreso, :string 
  #     configure :indicador_de_resultados_alumnos, :string 
  #     configure :indicador_de_resultados_enteros, :string 
  #     configure :nombre_del_responsable_de_los_datos, :string 
  #     configure :mis_logros_observaciones, :text 
  #     configure :alumnos_al_termino_del_1er_trim_sem, :string 
  #     configure :enteros_al_termino_del_1er_trim_sem, :string 
  #     configure :porcentaje_de_desercion_alumnos_al_1er_trim_sem, :string 
  #     configure :porcentaje_de_desercion_enteros_al_1er_trim_sem, :string 
  #     configure :mis_logros_nombre_del_responsable_de_los_datos, :string 
  #     configure :spv_observaciones_0, :text 
  #     configure :alumnos_al_termino_del_2er_trim_sem, :string 
  #     configure :enteros_al_termino_del_2er_trim_sem, :string 
  #     configure :porcentaje_de_desercion_alumnos_al_2er_trim_sem, :string 
  #     configure :porcentaje_de_desercion_enteros_al_2er_trim_sem, :string 
  #     configure :spv_nombre_del_responsable_de_los_datos, :text 
  #     configure :spv_observaciones_1, :string 
  #     configure :user_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Admitido  ###

  # config.model 'Admitido' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your admitido.rb model definition

  #   # Found associations:

  #     configure :inscrito, :belongs_to_association 
  #     configure :status_de_admision, :belongs_to_association 
  #     configure :status_de_la_notificacion, :belongs_to_association 
  #     configure :status_del_admitido, :belongs_to_association 
  #     configure :status_ref_pago_insc, :belongs_to_association 
  #     configure :examinados, :has_many_association 
  #     configure :versions, :has_many_association         # Hidden 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status_admision, :string 
  #     configure :comentarios_de_la_direccion, :text 
  #     configure :status_de_la_notificacion, :string 
  #     configure :status_del_admitido, :string 
  #     configure :cometnarios_de_notificacion, :text 
  #     configure :solicitud_de_admision, :boolean 
  #     configure :copia_del_acta_de_nacimiento, :boolean 
  #     configure :copia_del_certificado_de_preparatoria_licenciatura, :boolean 
  #     configure :fotografias_tamano_infantil_blanco_y_negro_papel_mate, :boolean 
  #     configure :copia_del_comprobante_de_pago_de_inscripcion, :boolean 
  #     configure :comentarios_documentacion, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :examinado_id, :integer 
  #     configure :isinscrito, :boolean 
  #     configure :inscrito_id, :integer         # Hidden 
  #     configure :status_de_admision_id, :integer         # Hidden 
  #     configure :status_de_la_notificacion_id, :integer         # Hidden 
  #     configure :status_del_admitido_id, :integer         # Hidden 
  #     configure :status_ref_pago_insc, :integer 
  #     configure :fecha_lim_fpi, :date 
  #     configure :status_ref_pago_insc_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Article  ###

  # config.model 'Article' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your article.rb model definition

  #   # Found associations:

  #     configure :comments, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :body, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Attachment  ###

  # config.model 'Attachment' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your attachment.rb model definition

  #   # Found associations:

  #     configure :tarea, :belongs_to_association 
  #     configure :memo, :belongs_to_association 
  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :name, :carrierwave 
  #     configure :tarea_id, :integer         # Hidden 
  #     configure :memo_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Authentication  ###

  # config.model 'Authentication' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your authentication.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :provider, :string 
  #     configure :uid, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  BarraFavorito  ###

  # config.model 'BarraFavorito' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your barra_favorito.rb model definition

  #   # Found associations:

  #     configure :favorito, :belongs_to_association 
  #     configure :user, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :favorito_id, :integer         # Hidden 
  #     configure :user_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :accion, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Becacredito  ###

  # config.model 'Becacredito' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your becacredito.rb model definition

  #   # Found associations:

  #     configure :solicitante, :belongs_to_association 
  #     configure :status_de_ese, :belongs_to_association 
  #     configure :status_de_pago_ese, :belongs_to_association 
  #     configure :status_del_tramite_de_beca, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :solicitud_de_beca_credito, :boolean 
  #     configure :porcentaje_de_beca_credito, :float 
  #     configure :porcentaje_de_credito_solicitado, :float 
  #     configure :estimado_de_pago_mensual_de_colegiatura, :decimal 
  #     configure :status_de_ESE, :string 
  #     configure :status_de_pago_ESE, :string 
  #     configure :porcentaje_de_beca_sugerido_ESE, :float 
  #     configure :fecha_limite_de_aplicacion_ESE, :date 
  #     configure :fecha_limite_de_pago_ESE, :date 
  #     configure :porcentaje_de_credito_sugerido_ESE, :date 
  #     configure :comentarios, :text 
  #     configure :status_del_tramite, :string 
  #     configure :porcentaje_de_beca_concedido, :float 
  #     configure :comentarios_dictamen_beca, :text 
  #     configure :solicitante_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :blank, :string 
  #     configure :status_de_ese_id, :integer         # Hidden 
  #     configure :status_de_pago_ese_id, :integer         # Hidden 
  #     configure :status_del_tramite_de_beca_id, :integer         # Hidden 
  #     configure :porcentaje_de_credito_concedido, :float 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  CampanaSocial  ###

  # config.model 'CampanaSocial' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your campana_social.rb model definition

  #   # Found associations:

  #     configure :events, :has_many_association 
  #     configure :posts, :has_many_association 
  #     configure :correos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :tipo, :string 
  #     configure :proveedor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer 
  #     configure :sede_id, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Caso  ###

  # config.model 'Caso' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your caso.rb model definition

  #   # Found associations:

  #     configure :programa, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :caso, :string 
  #     configure :status_del_caso, :string 
  #     configure :nombre_del_cliente, :string 
  #     configure :fecha_que_se_presenta_el_problema, :date 
  #     configure :fecha_estimada_de_resolucion, :date 
  #     configure :ambito_del_problema, :string 
  #     configure :sintoma_problema, :text 
  #     configure :descripcion_del_sintoma_problema, :text 
  #     configure :causa_del_problema, :text 
  #     configure :alternativas_de_solucion, :text 
  #     configure :solucion, :text 
  #     configure :comentarios_de_seguimiento_al_problema, :text 
  #     configure :atentido_por, :string 
  #     configure :resuelto_por, :string 
  #     configure :fecha_que_se_soluciono, :date 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :programa_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Colegiatura  ###

  # config.model 'Colegiatura' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your colegiatura.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 
  #     configure :nivel, :belongs_to_association 
  #     configure :programa, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :nivel_id, :integer         # Hidden 
  #     configure :programa_id, :integer         # Hidden 
  #     configure :cuota_de_inscripcion_para_esta_sede, :string 
  #     configure :cuota_mensual_para_esta_sede, :string 
  #     configure :tipo_y_no_de_pagos_de_inscripcion, :string 
  #     configure :tipo_y_no_de_pagos_de_colegiatura, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  ComentariosEstrategium  ###

  # config.model 'ComentariosEstrategium' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your comentarios_estrategium.rb model definition

  #   # Found associations:

  #     configure :estrategia_promocional, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :comentario_del_seguimiento, :text 
  #     configure :estrategia_promocional_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Comment  ###

  # config.model 'Comment' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your comment.rb model definition

  #   # Found associations:

  #     configure :commentable, :polymorphic_association 
  #     configure :comments, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :body, :text 
  #     configure :commentable_id, :integer         # Hidden 
  #     configure :commentable_type, :string         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Compartido  ###

  # config.model 'Compartido' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your compartido.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 
  #     configure :solicitante, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :solicitante_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Contacto  ###

  # config.model 'Contacto' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your contacto.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre_completo, :string 
  #     configure :organizacion, :string 
  #     configure :cargo, :string 
  #     configure :archivar_como, :string 
  #     configure :correo_electronico, :string 
  #     configure :pagina_web, :string 
  #     configure :direccion_de_instant_messenger, :string 
  #     configure :numeros_de_trabajo, :string 
  #     configure :numero_particular, :string 
  #     configure :numero_del_fax_del_trabajo, :string 
  #     configure :numero_movil, :string 
  #     configure :direccion_trabajo, :text 
  #     configure :notas, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Correo  ###

  # config.model 'Correo' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your correo.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 
  #     configure :user, :belongs_to_association 
  #     configure :campana_social, :belongs_to_association 
  #     configure :grupo, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombredelmail, :string 
  #     configure :maildata, :text 
  #     configure :fechaparaenviar, :datetime 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :user_id, :integer         # Hidden 
  #     configure :created_by, :integer 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 
  #     configure :campana_social_id, :integer         # Hidden 
  #     configure :grupo_id, :integer         # Hidden 
  #     configure :es_uno_a_uno, :boolean 
  #     configure :mail_campana, :string 
  #     configure :programa_id, :integer 
  #     configure :nivel_id, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Dashboard  ###

  # config.model 'Dashboard' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your dashboard.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :value, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Direccion  ###

  # config.model 'Direccion' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your direccion.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :calle, :string 
  #     configure :no_interior, :integer 
  #     configure :no_exterior, :integer 
  #     configure :colonia, :string 
  #     configure :delegacion_municipio, :string 
  #     configure :comentarios, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :blank, :string 
  #     configure :latitude, :float 
  #     configure :longitude, :float 
  #     configure :codigo_postal, :string 
  #     configure :estado, :string 
  #     configure :pais, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  DivisionTerritorial  ###

  # config.model 'DivisionTerritorial' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your division_territorial.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :estados_correspondientes, :text 
  #     configure :estado_ciudad_con_grupo_abierto, :string 
  #     configure :programa_id, :integer 
  #     configure :fecha_de_inicio, :date 
  #     configure :fecha_de_termino, :date 
  #     configure :estado_ciudad_con_grupo_abierto_1, :string 
  #     configure :programa_id_1, :integer 
  #     configure :fecha_de_inicio_1, :date 
  #     configure :fecha_de_termino_1, :date 
  #     configure :estado_ciudad_con_grupo_abierto_2, :string 
  #     configure :programa_id_2, :integer 
  #     configure :fecha_de_inicio_2, :date 
  #     configure :fecha_de_termino_2, :date 
  #     configure :estado_ciudad_con_grupo_abierto_3, :string 
  #     configure :programa_id_3, :integer 
  #     configure :fecha_de_inicio_3, :date 
  #     configure :fecha_de_termino_3, :date 
  #     configure :estado_ciudad_con_grupo_abierto_4, :string 
  #     configure :programa_id_4, :integer 
  #     configure :fecha_de_inicio_4, :date 
  #     configure :fecha_de_termino_4, :date 
  #     configure :estado_ciudad_con_grupo_abierto_5, :string 
  #     configure :programa_id_5, :integer 
  #     configure :fecha_de_inicio_5, :date 
  #     configure :fecha_de_termino_5, :date 
  #     configure :info_sim_sede_id, :integer 
  #     configure :estado_ciudad_con_mas_de_100_mil_habitantes, :text 
  #     configure :acceso_directo_al_sim, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Employmentship  ###

  # config.model 'Employmentship' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your employmentship.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :empleado, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :empleado_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  EquipoDeAltoRendimiento  ###

  # config.model 'EquipoDeAltoRendimiento' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your equipo_de_alto_rendimiento.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer 
  #     configure :nombre_completo, :string 
  #     configure :cargo, :string 
  #     configure :proyectos_a_cargo, :text 
  #     configure :horario_laboral, :text 
  #     configure :fecha_de_nacimiento, :date 
  #     configure :modalidad_de_contratacion, :text 
  #     configure :horas_semanales, :text 
  #     configure :email_institucional, :string 
  #     configure :telefono_de_oficina, :string 
  #     configure :extension, :string 
  #     configure :jefe_directo, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  EquipoPromocion  ###

  # config.model 'EquipoPromocion' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your equipo_promocion.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :apellido_paterno, :string 
  #     configure :apellido_materno, :string 
  #     configure :sexo, :boolean 
  #     configure :fecha_de_nacimiento, :date 
  #     configure :nacionalidad, :string 
  #     configure :cargo, :string 
  #     configure :sede, :string 
  #     configure :horas_laborales_semanales, :float 
  #     configure :tipo_de_contrato, :string 
  #     configure :fecha_de_ingreso, :date 
  #     configure :jefe_directo, :string 
  #     configure :cargo_del_jefe_directo, :string 
  #     configure :telefono_particular, :string 
  #     configure :movil, :string 
  #     configure :otro_tel, :string 
  #     configure :email_personal, :string 
  #     configure :email_laboral, :string 
  #     configure :modalidad_de_pago, :string 
  #     configure :sueldo_bruto, :decimal 
  #     configure :porcentaje_de_comision, :float 
  #     configure :calle, :string 
  #     configure :no_exterior, :string 
  #     configure :no_interior, :string 
  #     configure :colonia, :string 
  #     configure :codigo_postal, :string 
  #     configure :comentarios_direccion, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  EstrategiaPromocional  ###

  # config.model 'EstrategiaPromocional' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your estrategia_promocional.rb model definition

  #   # Found associations:

  #     configure :comentarios_estrategiums, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status_de_la_estrategia, :string 
  #     configure :fecha_para_llevarla_a_cabo, :date 
  #     configure :reponsable_para_llevarla_a_cabo, :string 
  #     configure :descripcion_detallada, :text 
  #     configure :mercado_metum_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :documento_path, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Event  ###

  # config.model 'Event' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your event.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :campana_social, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :mensaje, :string 
  #     configure :fecha_inicio, :date 
  #     configure :fecha_fin, :date 
  #     configure :donde, :string 
  #     configure :whensaved, :date 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :campana_social_id, :integer         # Hidden 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Examinado  ###

  # config.model 'Examinado' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your examinado.rb model definition

  #   # Found associations:

  #     configure :admitido, :belongs_to_association 
  #     configure :status_del_examinado_paa, :belongs_to_association 
  #     configure :status_del_examinado_psico, :belongs_to_association 
  #     configure :status_del_examinado_entrevistum, :belongs_to_association 
  #     configure :solicitantes, :has_many_association 
  #     configure :versions, :has_many_association         # Hidden 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status_del_examinado_paa, :string 
  #     configure :puntuacion_verbal, :float 
  #     configure :puntuacion_matematicas, :float 
  #     configure :puntuacion_redaccion_indirecta, :float 
  #     configure :puntaje_total_paa, :float 
  #     configure :dictament_paa, :string 
  #     configure :comentarios_evaluador_paa, :text 
  #     configure :solicitante_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :isadmitido, :boolean 
  #     configure :admitido_id, :integer         # Hidden 
  #     configure :status_del_examinado_paa_id, :integer         # Hidden 
  #     configure :status_del_examinado_psico, :integer 
  #     configure :puntuacion_MMPI, :integer 
  #     configure :dictamen_psico, :string 
  #     configure :comentarios_psico, :string 
  #     configure :status_del_examinado_entrevista, :integer 
  #     configure :dictamen_academico, :string 
  #     configure :comentarios_coord, :string 
  #     configure :comentarios_asesor, :string 
  #     configure :status_del_examinado_entrevista_id, :integer 
  #     configure :status_del_examinado_psico_id, :integer         # Hidden 
  #     configure :status_del_examinado_entrevistum_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Favorito  ###

  # config.model 'Favorito' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your favorito.rb model definition

  #   # Found associations:

  #     configure :barra_favoritos, :has_many_association 
  #     configure :users, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :model, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  FinalidadCultivo  ###

  # config.model 'FinalidadCultivo' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your finalidad_cultivo.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :finalidad_cultivo, :string 
  #     configure :mercado_metum_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Grupo  ###

  # config.model 'Grupo' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your grupo.rb model definition

  #   # Found associations:

  #     configure :prospectos, :has_many_association 
  #     configure :correos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  History  ###

  # config.model 'History' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your history.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :model_name, :string 
  #     configure :model_id, :string 
  #     configure :action, :text 
  #     configure :when, :date 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :user_id, :integer 
  #     configure :role, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Home  ###

  # config.model 'Home' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your home.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Import  ###

  # config.model 'Import' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your import.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :filename, :carrierwave 
  #     configure :module, :string 
  #     configure :description, :text 
  #     configure :whenimported, :datetime 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :modu, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Inscrito  ###

  # config.model 'Inscrito' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your inscrito.rb model definition

  #   # Found associations:

  #     configure :status_de_la_inscripcion, :belongs_to_association 
  #     configure :status_del_pago_de_la_inscripcion, :belongs_to_association 
  #     configure :admitidos, :has_many_association 
  #     configure :versions, :has_many_association         # Hidden 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status_de_la_inscripcion, :string 
  #     configure :fecha_limite_de_pago_de_inscripcion, :date 
  #     configure :status_del_pago_de_inscripcion, :string 
  #     configure :comentarios_del_coordinador_academico, :text 
  #     configure :admitido_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :status_de_la_inscripcion_id, :integer         # Hidden 
  #     configure :status_del_pago_de_la_inscripcion_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  InteresAcademico  ###

  # config.model 'InteresAcademico' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your interes_academico.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :opcion_1, :text 
  #     configure :opcion_2, :text 
  #     configure :opcion_3, :text 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :blank, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  InteresBasico  ###

  # config.model 'InteresBasico' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your interes_basico.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 
  #     configure :ultimo_grado_de_estudio, :belongs_to_association 
  #     configure :preparatoria_o_universidad_de_origen, :belongs_to_association 
  #     configure :municipio_de_la_preparatoria_o_universidad_de_origen, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :programa_de_intere, :belongs_to_association 
  #     configure :nivel, :belongs_to_association 
  #     configure :turno, :belongs_to_association 
  #     configure :periodo_para_ingresar, :belongs_to_association 
  #     configure :status_de_interes_de_prospecto_validado, :belongs_to_association 
  #     configure :subsede, :belongs_to_association 
  #     configure :programa, :belongs_to_association 
  #     configure :modalidad, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :ultimo_grado_de_estudios, :string 
  #     configure :preparatoria_universidad_de_origen, :string 
  #     configure :municipio_de_la_preparatoria_universidad_de_origen, :string 
  #     configure :ano_de_graduacion, :integer 
  #     configure :sede_y_subsede_de_interes, :string 
  #     configure :programa_de_interes, :string 
  #     configure :nivel, :string 
  #     configure :turno, :string 
  #     configure :periodo_para_ingresar, :string 
  #     configure :status_de_interes_del_prospecto_validado, :string 
  #     configure :comentarios, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :ultimo_grado_de_estudio_id, :integer         # Hidden 
  #     configure :blank, :string 
  #     configure :preparatoria_o_universidad_de_origen_id, :integer         # Hidden 
  #     configure :municipio_de_la_preparatoria_o_universidad_de_origen_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :programa_de_intere_id, :integer         # Hidden 
  #     configure :nivel_id, :integer         # Hidden 
  #     configure :turno_id, :integer         # Hidden 
  #     configure :periodo_para_ingresar_id, :integer         # Hidden 
  #     configure :status_de_interes_de_prospecto_validado_id, :integer         # Hidden 
  #     configure :subsede_id, :integer         # Hidden 
  #     configure :clave_del_programa, :string 
  #     configure :programa_id, :integer         # Hidden 
  #     configure :modalidad_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  LiveReport  ###

  # config.model 'LiveReport' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your live_report.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Llamada  ###

  # config.model 'Llamada' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your llamada.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :asunto, :string 
  #     configure :inicio_de_la_llamada, :date 
  #     configure :tiempo_de_inicio, :time 
  #     configure :fin_de_la_llamada, :date 
  #     configure :tiempo_de_fin, :time 
  #     configure :duracion, :float 
  #     configure :estado, :string 
  #     configure :aviso, :boolean 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  MedioDeContacto  ###

  # config.model 'MedioDeContacto' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your medio_de_contacto.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :feria_universitaria_en_su_colegio, :boolean 
  #     configure :visita_a_su_salon, :boolean 
  #     configure :recomendacion_de_un_amigo_familiar, :boolean 
  #     configure :recomendacion_de_un_egresado, :boolean 
  #     configure :sitio_oficial_web_ISEF, :boolean 
  #     configure :facebook, :boolean 
  #     configure :twitter, :boolean 
  #     configure :email_de_promocion_mailing, :boolean 
  #     configure :impreso_flyer_folleto, :boolean 
  #     configure :anuncio_publicacion_periodico_revista, :boolean 
  #     configure :llamada_telefonica_de_un_asesor, :boolean 
  #     configure :conferencia_platica_charla, :boolean 
  #     configure :sesion_informativa, :boolean 
  #     configure :visito_las_instalaciones, :boolean 
  #     configure :convenio_con_su_institucion, :boolean 
  #     configure :otro, :boolean 
  #     configure :otro_texto, :string 
  #     configure :comentarios, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :blank, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Memo  ###

  # config.model 'Memo' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your memo.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :attachments, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  MercadoMetum  ###

  # config.model 'MercadoMetum' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your mercado_metum.rb model definition

  #   # Found associations:

  #     configure :finalidad_cultivos, :has_many_association 
  #     configure :prospectos, :has_many_association 
  #     configure :estrategia_promocionals, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre_de_la_institucion_meta, :string 
  #     configure :contacto_principal, :string 
  #     configure :email, :string 
  #     configure :pag_web, :string 
  #     configure :observaciones_del_mercado_meta, :text 
  #     configure :giro, :string 
  #     configure :cargo, :string 
  #     configure :email_secundario, :string 
  #     configure :telefono, :string 
  #     configure :movil, :string 
  #     configure :otro_telefono, :string 
  #     configure :calle, :string 
  #     configure :no_interior, :string 
  #     configure :no_exterior, :string 
  #     configure :colonia, :string 
  #     configure :delegacion_municipio, :string 
  #     configure :codigo_postal, :string 
  #     configure :comentarios_direccion, :text 
  #     configure :mapa_google_maps, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :latitude, :float 
  #     configure :longitude, :float 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Meta  ###

  # config.model 'Meta' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your meta.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer 
  #     configure :clave_del_programa, :string 
  #     configure :fecha_de_inicio, :date 
  #     configure :nivel_id, :integer 
  #     configure :programa_id, :integer 
  #     configure :ciudad_de_apertura, :string 
  #     configure :estado_de_apertura, :string 
  #     configure :modalidad, :string 
  #     configure :turno_id, :integer 
  #     configure :horarios, :string 
  #     configure :horarios_text, :text 
  #     configure :lugar_donde_se_impartiran_las_clases, :string 
  #     configure :asesor_a_cargo, :integer 
  #     configure :status_de_fecha_de_apertura, :string 
  #     configure :meta_de_alumnos, :string 
  #     configure :meta_de_enteros, :string 
  #     configure :viabilidad_de_la_apertura, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  MetasGlobale  ###

  # config.model 'MetasGlobale' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your metas_globale.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer 
  #     configure :meta_anual_de_alumnos_de_licenciatura, :string 
  #     configure :meta_anual_de_enteros_de_licenciatura, :string 
  #     configure :meta_anual_de_alumnos_de_posgrado, :string 
  #     configure :meta_anual_de_enteros_de_posgrado, :string 
  #     configure :no_de_grupos_al_ano_de_licenciatura, :string 
  #     configure :no_de_grupos_al_ano_de_posgrado_local, :string 
  #     configure :no_de_grupos_al_ano_de_posgrado_foraneo, :string 
  #     configure :total_de_grupos_al_ano, :string 
  #     configure :metas_establecidas_por, :string 
  #     configure :observaciones, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :sede_id_1, :integer 
  #     configure :mes_ano_1, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_1, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_1, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_1, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_1, :string 
  #     configure :observaciones_1, :text 
  #     configure :sede_id_2, :integer 
  #     configure :mes_ano_2, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_2, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_2, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_2, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_2, :string 
  #     configure :observaciones_2, :text 
  #     configure :sede_id_3, :integer 
  #     configure :mes_ano_3, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_3, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_3, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_3, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_3, :string 
  #     configure :observaciones_3, :text 
  #     configure :sede_id_4, :integer 
  #     configure :mes_ano_4, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_4, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_4, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_4, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_4, :string 
  #     configure :observaciones_4, :text 
  #     configure :sede_id_5, :integer 
  #     configure :mes_ano_5, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_5, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_5, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_5, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_5, :string 
  #     configure :observaciones_5, :text 
  #     configure :sede_id_6, :integer 
  #     configure :mes_ano_6, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_6, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_6, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_6, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_6, :string 
  #     configure :observaciones_6, :text 
  #     configure :sede_id_7, :integer 
  #     configure :mes_ano_7, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_7, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_7, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_7, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_7, :string 
  #     configure :observaciones_7, :text 
  #     configure :sede_id_8, :integer 
  #     configure :mes_ano_8, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_8, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_8, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_8, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_8, :string 
  #     configure :observaciones_8, :text 
  #     configure :sede_id_9, :integer 
  #     configure :mes_ano_9, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_9, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_9, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_9, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_9, :string 
  #     configure :observaciones_9, :text 
  #     configure :sede_id_10, :integer 
  #     configure :mes_ano_10, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_10, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_10, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_10, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_10, :string 
  #     configure :observaciones_10, :text 
  #     configure :sede_id_11, :integer 
  #     configure :mes_ano_11, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_11, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_11, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_11, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_11, :string 
  #     configure :observaciones_11, :text 
  #     configure :sede_id_12, :integer 
  #     configure :mes_ano_12, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_licenciatura_12, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_licenciatura_12, :string 
  #     configure :logro_mensual_de_alumnos_inscritos_de_Posgrado_12, :string 
  #     configure :logro_mensual_de_enteros_inscritos_de_posgrado_12, :string 
  #     configure :observaciones_12, :text 
  #     configure :sede_id_anual, :integer 
  #     configure :logro_anual_de_alumnos_de_licenciatura, :string 
  #     configure :logro_anual_de_enteros_de_licenciatura, :string 
  #     configure :logro_anual_de_alumnos_de_posgrado, :string 
  #     configure :logro_anual_de_enteros_de_posgrado, :string 
  #     configure :logro_anual_de_grupos_abiertos_de_licenciatura, :string 
  #     configure :logro_anual_de_grupos_abiertos_de_posgrado_local, :string 
  #     configure :logro_anual_de_grupos_abiertos_de_posgrado_foraneo, :string 
  #     configure :total_de_grupos_abiertos, :string 
  #     configure :indicador_de_resultados_anual_alumnos_de_licenciatura, :string 
  #     configure :indicador_de_resultados_anual_enteros_de_licenciatura, :string 
  #     configure :indicador_de_resultados_anual_alumnos_de_posgrado, :string 
  #     configure :indicador_de_resultados_anual_enteros_de_posgrado, :string 
  #     configure :metas_anuales_observaciones, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  MiPlanEstrategicoDePromocionPep  ###

  # config.model 'MiPlanEstrategicoDePromocionPep' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your mi_plan_estrategico_de_promocion_pep.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :pep_para, :integer 
  #     configure :nombre_de_la_institucion, :string 
  #     configure :segmento, :string 
  #     configure :tipo_especifico, :string 
  #     configure :nse, :string 
  #     configure :forma_parte_de_mi_mdo_meta, :string 
  #     configure :tamano_de_mdo_que_aspira_abarcar, :string 
  #     configure :mercado_meta_observaciones, :text 
  #     configure :asesor_a_cargo, :integer 
  #     configure :persona_de_contacto, :string 
  #     configure :cargo, :string 
  #     configure :telefono_de_oficina, :string 
  #     configure :ext, :string 
  #     configure :otro_telefono, :string 
  #     configure :movil, :string 
  #     configure :email, :string 
  #     configure :pag_web, :string 
  #     configure :calle, :string 
  #     configure :no_exterior, :string 
  #     configure :no_interior, :string 
  #     configure :colonia, :string 
  #     configure :codigo_postal, :string 
  #     configure :delegacion_municipio, :string 
  #     configure :estado, :string 
  #     configure :pais, :string 
  #     configure :google_maps, :string 
  #     configure :latitude, :string 
  #     configure :longitude, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :total_de_prospectos_obtenidos, :integer 
  #     configure :no_solicitantes, :integer 
  #     configure :nombre_de_los_solicitantes, :text 
  #     configure :no_de_entrevistados_examinados, :integer 
  #     configure :nombre_de_los_entrevistados_examinados, :text 
  #     configure :no_de_admitidos, :integer 
  #     configure :nombre_de_los_admitidos, :text 
  #     configure :no_de_inscritos, :integer 
  #     configure :nombre_de_los_inscritos, :text 
  #     configure :observaciones, :text 
  #     configure :user_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Modalidad  ###

  # config.model 'Modalidad' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your modalidad.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  MunicipioDeLaPreparatoriaOUniversidadDeOrigen  ###

  # config.model 'MunicipioDeLaPreparatoriaOUniversidadDeOrigen' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your municipio_de_la_preparatoria_o_universidad_de_origen.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  NacionalDeApertura  ###

  # config.model 'NacionalDeApertura' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your nacional_de_apertura.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_actual, :string 
  #     configure :sede_id, :integer 
  #     configure :clave_del_programa, :string 
  #     configure :fecha_de_inicio, :date 
  #     configure :programa_id, :integer 
  #     configure :ciudad_de_apertura, :string 
  #     configure :estado_de_apertura, :string 
  #     configure :modalidad, :string 
  #     configure :turno, :string 
  #     configure :horarios, :text 
  #     configure :lugar_donde_se_impartiran_las_clases, :string 
  #     configure :asesor_a_cargo, :integer 
  #     configure :email_de_contacto, :string 
  #     configure :status_de_la_fecha_de_apertura, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Nacionalidad  ###

  # config.model 'Nacionalidad' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your nacionalidad.rb model definition

  #   # Found associations:

  #     configure :prospectos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nacionalidad, :string 
  #     configure :pais, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Nivel  ###

  # config.model 'Nivel' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your nivel.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 
  #     configure :achievments, :has_many_association 
  #     configure :oferta_educativa, :has_many_association 
  #     configure :colegiatura, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  OfertaEducativa  ###

  # config.model 'OfertaEducativa' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your oferta_educativa.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 
  #     configure :nivel, :belongs_to_association 
  #     configure :programa, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :periodo_anual, :string 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :nivel_id, :integer         # Hidden 
  #     configure :programa_id, :integer         # Hidden 
  #     configure :tipo_de_validez, :string 
  #     configure :tipo_de_reconocimiento, :string 
  #     configure :sedes_en_las_que_se_oferta_este_programa, :string 
  #     configure :modalidades_en_que_se_imparte, :string 
  #     configure :horarios_en_que_se_imparte, :string 
  #     configure :requisitos, :text 
  #     configure :objetivo_del_programa, :text 
  #     configure :perfil_de_ingreso, :text 
  #     configure :perfil_de_egreso, :text 
  #     configure :ambito_de_desempeno, :text 
  #     configure :principales_beneficios_que_ofrece_el_programa, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PeriodoParaIngresar  ###

  # config.model 'PeriodoParaIngresar' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your periodo_para_ingresar.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PlanDeDescuento  ###

  # config.model 'PlanDeDescuento' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your plan_de_descuento.rb model definition

  #   # Found associations:

  #     configure :prospecto, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :descuento_en_la_inscripcion, :boolean 
  #     configure :porcentaje, :integer 
  #     configure :fecha_de_caducidad, :date 
  #     configure :otro_cual, :string 
  #     configure :comentarios, :text 
  #     configure :prospecto_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :blank, :string 
  #     configure :fecha_de_otorgamiento, :date 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PlanDeVentum  ###

  # config.model 'PlanDeVentum' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your plan_de_ventum.rb model definition

  #   # Found associations:

  #     configure :sedes, :has_many_association 
  #     configure :prospectos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :programa, :string 
  #     configure :cuota_de_inscripcion, :decimal 
  #     configure :periodo_de_pago_de_inscripcion, :string 
  #     configure :cuota_de_colegiatura, :decimal 
  #     configure :meses_de_pago_de_colegiatura, :string 
  #     configure :sede_id, :integer 
  #     configure :subsede, :string 
  #     configure :fecha_de_apertura, :date 
  #     configure :periodo_Banner_de_apertura, :string 
  #     configure :nombre_del_asesor_a_cargo, :string 
  #     configure :comentarios_generalidades_de_apertura, :text 
  #     configure :meta_de_enteros, :string 
  #     configure :status_de_la_apertura, :string 
  #     configure :avance_en_enteros, :string 
  #     configure :porcentaje_de_cumplimiento_meta_vs_avance_en_enteros, :string 
  #     configure :viabilidad_de_esta_apertura, :string 
  #     configure :comentarios_meta, :text 
  #     configure :medio_promocional, :string 
  #     configure :descripcion_especificaciones_detalladas_del_medio_promocional, :text 
  #     configure :cantidad, :string 
  #     configure :inversion, :decimal 
  #     configure :viaticos_de_promocion_estimados, :decimal 
  #     configure :vales_de_gasolina, :decimal 
  #     configure :total_de_inversion_en_medios_y_viaticos_para_esta_apertura, :decimal 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Post  ###

  # config.model 'Post' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your post.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :campana_social, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :mensaje, :string 
  #     configure :whensaved, :date 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :campana_social_id, :integer         # Hidden 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Preguntum  ###

  # config.model 'Preguntum' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your preguntum.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :ambito_de_la_pregunta, :string 
  #     configure :pregunta, :text 
  #     configure :causa_de_la_pregunta, :text 
  #     configure :alternativas_de_respuestas, :text 
  #     configure :respuesta, :text 
  #     configure :pregunta_planteada_por, :string 
  #     configure :resuelta_por, :string 
  #     configure :pregunta_frecuente, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PreparatoriaOUniversidadDeOrigen  ###

  # config.model 'PreparatoriaOUniversidadDeOrigen' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your preparatoria_o_universidad_de_origen.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Programa  ###

  # config.model 'Programa' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your programa.rb model definition

  #   # Found associations:

  #     configure :prospectos, :has_many_association 
  #     configure :casos, :has_many_association 
  #     configure :interes_basicos, :has_many_association 
  #     configure :achievments, :has_many_association 
  #     configure :oferta_educativa, :has_many_association 
  #     configure :colegiatura, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nivel, :string 
  #     configure :programa, :string 
  #     configure :descripcion_detallada, :text 
  #     configure :principales_caracteristicas, :text 
  #     configure :principales_ventajas, :text 
  #     configure :principales_beneficios, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  ProgramaDeIntere  ###

  # config.model 'ProgramaDeIntere' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your programa_de_intere.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Prospecto  ###

  # config.model 'Prospecto' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your prospecto.rb model definition

  #   # Found associations:

  #     configure :solicitante, :belongs_to_association 
  #     configure :nacionalidad, :belongs_to_association 
  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :programa, :belongs_to_association 
  #     configure :mercado_metum, :belongs_to_association 
  #     configure :territorio, :belongs_to_association 
  #     configure :plan_de_ventum, :belongs_to_association 
  #     configure :grupo, :belongs_to_association 
  #     configure :subsede, :belongs_to_association 
  #     configure :direccions, :has_many_association 
  #     configure :interes_basicos, :has_many_association 
  #     configure :medio_de_contactos, :has_many_association 
  #     configure :interes_academicos, :has_many_association 
  #     configure :accion_estrategicas, :has_many_association 
  #     configure :plan_de_descuentos, :has_many_association 
  #     configure :versions, :has_many_association         # Hidden 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :apellido_paterno, :string 
  #     configure :apellido_materno, :string 
  #     configure :sexo, :boolean 
  #     configure :fecha_de_nacimiento, :date 
  #     configure :nacionalidad, :string 
  #     configure :telefono_particular, :string 
  #     configure :telefono_movil, :string 
  #     configure :otro_telefono, :string 
  #     configure :email, :string 
  #     configure :validado, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :issolicitante, :boolean 
  #     configure :solicitante_id, :integer         # Hidden 
  #     configure :nacionalidad_id, :integer         # Hidden 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :programa_id, :integer         # Hidden 
  #     configure :mercado_metum_id, :integer         # Hidden 
  #     configure :plan_de_venta_id, :integer 
  #     configure :territorio_id, :integer         # Hidden 
  #     configure :plan_de_ventum_id, :integer         # Hidden 
  #     configure :grupo_id, :integer         # Hidden 
  #     configure :importado_revisado, :boolean 
  #     configure :subsede_id, :integer         # Hidden 
  #     configure :facebook, :string 
  #     configure :twitter, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Purge  ###

  # config.model 'Purge' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your purge.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Report  ###

  # config.model 'Report' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your report.rb model definition

  #   # Found associations:

  #     configure :reportparams, :has_many_association 
  #     configure :reportsortbies, :has_many_association 
  #     configure :reportlines, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :table, :string 
  #     configure :column_names, :serialized 
  #     configure :por_pagina, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Reportline  ###

  # config.model 'Reportline' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your reportline.rb model definition

  #   # Found associations:

  #     configure :report, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre_del_campo, :string 
  #     configure :modulo, :string 
  #     configure :report_id, :integer         # Hidden 
  #     configure :campo, :string 
  #     configure :filtro, :string 
  #     configure :valorcampo, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Reportparam  ###

  # config.model 'Reportparam' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your reportparam.rb model definition

  #   # Found associations:

  #     configure :report, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :fieldname, :string 
  #     configure :fieldvalue, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :report_id, :integer         # Hidden 
  #     configure :filter, :string 
  #     configure :column_names, :text 
  #     configure :date_value, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Reportsortby  ###

  # config.model 'Reportsortby' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your reportsortby.rb model definition

  #   # Found associations:

  #     configure :report, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :fieldname, :string 
  #     configure :report_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :orden, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Role  ###

  # config.model 'Role' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your role.rb model definition

  #   # Found associations:

  #     configure :role_permisions, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :nivel, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  RolePermision  ###

  # config.model 'RolePermision' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your role_permision.rb model definition

  #   # Found associations:

  #     configure :role, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :objeto, :string 
  #     configure :permiso, :string 
  #     configure :user_id, :integer 
  #     configure :role_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Rpm  ###

  # config.model 'Rpm' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your rpm.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :permalink, :string 
  #     configure :prospectos, :serialized 
  #     configure :usuarios, :serialized 
  #     configure :sedes, :serialized 
  #     configure :subsedes, :serialized 
  #     configure :programas, :serialized 
  #     configure :campanas, :serialized 
  #     configure :rango_inicio, :date 
  #     configure :rango_fin, :date 
  #     configure :ordenar_por, :string 
  #     configure :sede_id, :serialized 
  #     configure :subsede_id, :serialized 
  #     configure :nacionalidad_id, :serialized 
  #     configure :ultimo_grado_de_estudio_id, :serialized 
  #     configure :preparatoria_o_universidad_de_origen_id, :serialized 
  #     configure :municipio_de_la_preparatoria_o_universidad_de_origen_id, :serialized 
  #     configure :periodo_para_ingresar_id, :serialized 
  #     configure :status_de_admision_id, :serialized 
  #     configure :status_de_ese_id, :serialized 
  #     configure :status_de_interes_de_prospecto_validado_id, :serialized 
  #     configure :status_de_la_inscripcion_id, :serialized 
  #     configure :status_de_la_notificacion_id, :serialized 
  #     configure :status_de_pago_de_examen_de_admision_id, :serialized 
  #     configure :status_de_pago_de_ese_id, :serialized 
  #     configure :status_del_admitido_id, :serialized 
  #     configure :status_del_examinado_paa_id, :serialized 
  #     configure :status_del_pago_de_la_inscripcion_id, :serialized 
  #     configure :status_del_tramite_de_beca_id, :serialized 
  #     configure :tipo_de_admision_id, :serialized 
  #     configure :turno_id, :serialized 
  #     configure :modalidad_id, :serialized 
  #     configure :grupo_id, :serialized 
  #     configure :status_ref_pago_inscs_id, :serialized 
  #     configure :status_del_examinado_psico_id, :serialized 
  #     configure :status_del_examinado_entrevistum_id, :serialized 
  #     configure :estado_validado, :string 
  #     configure :validado_inicio, :date 
  #     configure :validado_fin, :date 
  #     configure :estado_solicitante, :string 
  #     configure :solicitante_inicio, :date 
  #     configure :solicitante_fin, :date 
  #     configure :estado_examinado, :string 
  #     configure :examinado_inicio, :date 
  #     configure :examinado_fin, :date 
  #     configure :estado_admitido, :string 
  #     configure :admitido_inicio, :date 
  #     configure :admitido_fin, :date 
  #     configure :estado_inscrito, :string 
  #     configure :inscrito_inicio, :date 
  #     configure :inscrito_fin, :date 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Sede  ###

  # config.model 'Sede' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your sede.rb model definition

  #   # Found associations:

  #     configure :users, :has_many_association 
  #     configure :tarea, :has_many_association 
  #     configure :memo, :has_many_association 
  #     configure :interes_basicos, :has_many_association 
  #     configure :llamada, :has_many_association 
  #     configure :attachment, :has_many_association 
  #     configure :subsedes, :has_many_association 
  #     configure :prospectos, :has_many_association 
  #     configure :tweets, :has_many_association 
  #     configure :achievments, :has_many_association 
  #     configure :oferta_educativa, :has_many_association 
  #     configure :colegiatura, :has_many_association 
  #     configure :division_territorials, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Solicitante  ###

  # config.model 'Solicitante' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your solicitante.rb model definition

  #   # Found associations:

  #     configure :examinado, :belongs_to_association 
  #     configure :status_de_pago_de_examen_de_admision, :belongs_to_association 
  #     configure :tipo_de_admision, :belongs_to_association 
  #     configure :prospectos, :has_many_association 
  #     configure :becacreditos, :has_many_association 
  #     configure :versions, :has_many_association         # Hidden 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :socilicita_PAA, :boolean 
  #     configure :solicita_pscicometria, :boolean 
  #     configure :solicita_entrevista_academica, :boolean 
  #     configure :status_depago_examen_de_admision, :string 
  #     configure :promedio, :float 
  #     configure :tipo_de_admision, :string 
  #     configure :fecha_programacion_para_PAA, :date 
  #     configure :fecha_programacion_para_examenes_pscicomentricos, :date 
  #     configure :fecha_programada_para_entrevistas, :date 
  #     configure :fecha_de_limite_de_pago_examen_de_admision, :date 
  #     configure :hora_programada_PAA, :time 
  #     configure :hora_programada_pscicometrico, :time 
  #     configure :hora_programada_entrevistas, :time 
  #     configure :comentarios, :text 
  #     configure :prospecto_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :isexaminado, :boolean 
  #     configure :examinado_id, :integer         # Hidden 
  #     configure :status_de_pago_de_examen_de_admision_id, :integer         # Hidden 
  #     configure :tipo_de_admision_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Static  ###

  # config.model 'Static' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your static.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDeAdmision  ###

  # config.model 'StatusDeAdmision' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_admision.rb model definition

  #   # Found associations:

  #     configure :admitidos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDeEse  ###

  # config.model 'StatusDeEse' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_ese.rb model definition

  #   # Found associations:

  #     configure :becacreditos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDeInteresDeProspectoValidado  ###

  # config.model 'StatusDeInteresDeProspectoValidado' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_interes_de_prospecto_validado.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDeLaInscripcion  ###

  # config.model 'StatusDeLaInscripcion' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_la_inscripcion.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDeLaNotificacion  ###

  # config.model 'StatusDeLaNotificacion' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_la_notificacion.rb model definition

  #   # Found associations:

  #     configure :admitidos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDePagoDeExamenDeAdmision  ###

  # config.model 'StatusDePagoDeExamenDeAdmision' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_pago_de_examen_de_admision.rb model definition

  #   # Found associations:

  #     configure :solicitantes, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDePagoEse  ###

  # config.model 'StatusDePagoEse' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_de_pago_ese.rb model definition

  #   # Found associations:

  #     configure :becacreditos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelAdmitido  ###

  # config.model 'StatusDelAdmitido' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_admitido.rb model definition

  #   # Found associations:

  #     configure :admitidos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelExaminadoEntrevistum  ###

  # config.model 'StatusDelExaminadoEntrevistum' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_examinado_entrevistum.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelExaminadoPaa  ###

  # config.model 'StatusDelExaminadoPaa' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_examinado_paa.rb model definition

  #   # Found associations:

  #     configure :examinados, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelExaminadoPsico  ###

  # config.model 'StatusDelExaminadoPsico' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_examinado_psico.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelPagoDeLaInscripcion  ###

  # config.model 'StatusDelPagoDeLaInscripcion' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_pago_de_la_inscripcion.rb model definition

  #   # Found associations:

  #     configure :inscritos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusDelTramiteDeBeca  ###

  # config.model 'StatusDelTramiteDeBeca' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_del_tramite_de_beca.rb model definition

  #   # Found associations:

  #     configure :becacreditos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  StatusRefPagoInsc  ###

  # config.model 'StatusRefPagoInsc' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your status_ref_pago_insc.rb model definition

  #   # Found associations:

  #     configure :admitidos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Subsede  ###

  # config.model 'Subsede' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your subsede.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Tarea  ###

  # config.model 'Tarea' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your tarea.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 
  #     configure :attachments, :has_many_association 
  #     configure :prospecto, :has_one_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :descripcion, :text 
  #     configure :fecha_de_inicio_de_la_tarea, :date 
  #     configure :hora_de_inicio, :time 
  #     configure :fecha_de_fin_de_la_tarea, :date 
  #     configure :hora_de_fin, :time 
  #     configure :attachment, :carrierwave 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :model_name, :string 
  #     configure :model_id, :integer 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Territorio  ###

  # config.model 'Territorio' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your territorio.rb model definition

  #   # Found associations:

  #     configure :prospectos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :nombre, :string 
  #     configure :sede_id, :integer 
  #     configure :estado, :string 
  #     configure :ciudad, :string 
  #     configure :descripcion_detallada, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  TipoDeAdmision  ###

  # config.model 'TipoDeAdmision' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your tipo_de_admision.rb model definition

  #   # Found associations:

  #     configure :solicitantes, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Turno  ###

  # config.model 'Turno' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your turno.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 
  #     configure :achievments, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :valor, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Tweet  ###

  # config.model 'Tweet' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your tweet.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :sede, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :tweet, :string 
  #     configure :when_saved, :date 
  #     configure :created_by, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :model_id, :integer 
  #     configure :model_name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  UltimoGradoDeEstudio  ###

  # config.model 'UltimoGradoDeEstudio' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your ultimo_grado_de_estudio.rb model definition

  #   # Found associations:

  #     configure :interes_basicos, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :grado_de_estudio, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  User  ###

  # config.model 'User' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your user.rb model definition

  #   # Found associations:

  #     configure :sede, :belongs_to_association 
  #     configure :barra_favoritos, :has_many_association 
  #     configure :prospectos, :has_many_association 
  #     configure :favoritos, :has_many_association 
  #     configure :authentications, :has_many_association 
  #     configure :achievments, :has_many_association 
  #     configure :mi_plan_estrategico_de_promocion_peps, :has_many_association 
  #     configure :employmentships, :has_many_association 
  #     configure :empleados, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :email, :string 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :confirmation_token, :string 
  #     configure :confirmed_at, :datetime 
  #     configure :confirmation_sent_at, :datetime 
  #     configure :unconfirmed_email, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :username, :string 
  #     configure :role, :string 
  #     configure :sede_id, :integer         # Hidden 
  #     configure :avatar_url, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end

end
