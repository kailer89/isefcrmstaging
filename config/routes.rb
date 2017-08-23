ProtoCRM3::Application.routes.draw do

match "web" => "prospectos#webtest", as: :web
  resources :searches

  resources :efectividads

  resources :duracion_en_textos

  resources :configuraciones

  resources :dictamen_psicometria

  resources :dictamen_paas

  resources :report_directions

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :comments do
    resources :comments
  end

  resources :articles do
    resources :comments
  end

  


  resources :rpms

  resources :histories

  resources :status_ref_pago_inscs

  resources :status_del_examinado_psicos

  resources :status_del_examinado_entrevista


  resources :modalidads

  resources :role_permisions

  resources :roles

  resources :metas_globales

  resources :contactos

  resources :equipo_de_alto_rendimientos

  resources :nacional_de_aperturas

  resources :division_territorials

  resources :colegiaturas

  resources :oferta_educativas

  resources :mi_plan_estrategico_de_promocion_peps

  resources :achievments

  resources :meta

  resources :reportlines

  resources :grupos

  resources :tweets

  resources :subsedes

  resources :events

  resources :posts

  resources :campana_socials

  resources :authentications

  resources :imports

  resources :reportsortbies

  resources :reportparams

  resources :reports

  resources :statics

  resources :correos

  resources :live_reports

  resources :status_del_pago_de_la_inscripcions

  resources :status_de_la_inscripcions

  resources :status_del_admitidos

  resources :status_de_la_notificacions

  resources :status_de_admisions

  resources :status_del_examinado_paas

  resources :status_del_tramite_de_becas

  resources :status_de_pago_eses

  resources :status_de_eses

  resources :tipo_de_admisions

  resources :status_de_pago_de_examen_de_admisions

  resources :status_de_la_accion_1s

  resources :status_de_interes_de_prospecto_validados

  resources :periodo_para_ingresars

  resources :turnos

  resources :nivels

  resources :programa_de_interes

  resources :municipio_de_la_preparatoria_o_universidad_de_origens

  resources :employmentships

  resources :dashboards

  resources :llamadas

  resources :preparatoria_o_universidad_de_origens

  resources :memos

  resources :attachments

  resources :tareas

  resources :barra_favoritos

  resources :favoritos

  resources :ultimo_grado_de_estudios

  resources :nacionalidads

  resources :pregunta

  resources :casos

  resources :equipo_promocions

  resources :programas

  resources :territorios

  resources :plan_de_venta

  resources :finalidad_cultivos

  resources :comentarios_estrategia

  resources :estrategia_promocionals

  resources :mercado_meta

  #resources :homes

  resources :purges
  resources :inscritos
  resources :admitidos
  resources :examinados
  resources :solicitantes
  resources :prospectos

resources :prospectos, only: :index do
    match 'advanced_search' => 'prospectos#advanced_search',
          on: :collection, via: [:get, :post], as: :advanced_search
  end

  resources :sedes

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:sessions => "sessions" }
  resources :users
  
 devise_for :prospectos, :skip => [:webtest] 
  root :to => "homes#force_redirect"
 
  
  match "/solicitantes/:id/convertir_solicitante" => "solicitantes#convertir_solicitante", as: :convertir_solicitante
  match "/examinados/:id/convertir_examinado" => "examinados#convertir_examinado", as: :convertir_examinado
  match "/admitidos/:id/convertir_admitido" => "admitidos#convertir_admitido", as: :convertir_admitido
  match "/prospectos/:id/validar" => "prospectos#validar", as: :validar,:validado=>false
  match "/prospectos/:id/convertir" => "prospectos#convertir", as: :convertir, :validado=>true
  match "/multiexport" => "prospectos#multiexport"
  match "/purgeprospectos" => "prospectos#purgeprospectos"
  match "/borrarprospectosinvalidos" => "prospectos#borrarprospectosinvalidos"

  match "/multiexports" => "prospectos#multiexports"
  match "/multiexporta" => "prospectos#multiexporta"
  match "/multiexporte" => "prospectos#multiexporte"
  match "/multiexporti" => "prospectos#multiexporti"
  match "/mostrarmultiple" => "prospectos#mostrarmultiple"
  match "/cambiarmultiple" => "prospectos#cambiarmultiple"
  match "/webtest" => "prospectos#webtest"

  match "/inscritos/:id/convertir_en_admitido" => "inscritos#convertir_en_admitido", as: :convertir_en_admitido





  match 'saved_search_add' => "searches#saved_search", as: :saved_search
  match 'redir_to_saved' => "searches#redir_to_saved", as: :redir_to_saved
  
  

  
  match "/purge_admitidos"=>"purges#purge_admitidos",as: :purge_admitidos
  match "/purge_examinados"=>"purges#purge_examinados",as: :purge_examinados
  match "/purge_inscritos"=>"purges#purge_inscritos",as: :purge_inscritos
  match "/purge_prospectos"=>"purges#purge_prospectos",as: :purge_prospectos
  match "/purge_sedes"=>"purges#purge_sedes",as: :purge_sedes
  match "/purge_solicitantes"=>"purges#purge_solicitantes",as: :purge_solicitantes
  match "/purge_users"=>"purges#purge_users",as: :purge_users
  match "/purge_all"=>"purges#purge_all",as: :purge_all
  match "/purge_test"=>"purges#purge_test",as: :purge_test

  match "/home"=>"homes#index",as: :home

  
  match "/empleados" => "dashboards#empleados", as: :empleados
  match "/rcircular" => "dashboards#rcircular", as: :rcircular
  match "/rsemanal" => "dashboards#rsemanal", as: :rcircular

  match "/miscorreos" => "statics#miscorreos", as: :miscorreos
  match "/correosenviados" => "statics#correosenviados", as: :correosenviados



  match "/enviandocorreos" => "correos#enviandocorreos", as: :enviandocorreos
  match "/send_correo_individually" => "correos#send_correo_individually", as: :send_correo_individually
  

  match "/campanasenviadas" => "statics#campanasenviadas", as: :campanasenviadas

  match "/prospectos/:id/printview" => "prospectos#printview", as: :printview
  match "/prospectos/:id/printviewpdf" => "prospectos#printviewpdf", as: :printviewpdf

  match "/achievments/:id/printview" => "achievments#printview", as: :printview

  match "/admitidos/:id/printview" => "admitidos#printview", as: :printview
  match "/admitidos/:id/printviewpdf" => "admitidos#printviewpdf", as: :printviewpdf

  match "/reports/:id/printview" => "reports#printview", as: :printview
  match "/solicitantes/:id/printview" => "solicitantes#printview", as: :printview
  match "/solicitantes/:id/printviewpdf" => "solicitantes#printviewpdf", as: :printviewpdf

  match "/examinados/:id/printview" => "examinados#printview", as: :printview
  match "/examinados/:id/printviewpdf" => "examinados#printviewpdf", as: :printviewpdf

  match "/inscritos/:id/printview" => "inscritos#printview", as: :printview
  match "/inscritos/:id/printviewpdf" => "inscritos#printviewpdf", as: :printviewpdf

  match "/admitidos/:id/printview" => "admitidos#printview", as: :printview
  match "/inscritos/:id/printview" => "inscritos#printview", as: :printview
  match "/rpms/:id/printview" => "rpms#printview", as: :printview


  match "/programas/:id/borrar" => "programas#borrar", as: :borrar
  match "/programas/:id/masschange" => "programas#masschange", as: :masschange



  match "/prospectos/:id/resumen"=>"prospectos#resumen", as: :resumen
  
  match "/reports/:id/imprimir" => "reports#imprimir", as: :imprimir
  match "/rpms/:id/imprimir" => "rpms#imprimir", as: :imprimir_rpm
  match "/imports/:id/uploadcsv" => "imports#uploadcsv", as: :uploadcsv

  
  match "/correos/:id/send_correo" => "correos#send_correo", as: :send_correo
  match "/correos/:id/send_correo_individually" => "correos#send_correo_individually", as: :send_correo_individually
  match "/tweets/:id/send_tweet" => "tweets#send_tweet", as: :send_tweet

  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/google_apps/callback' => 'authentications#create'
  match '/opciones' => 'dashboards#opciones', as: :opciones
  match '/mispendientes' => 'dashboards#mispendientes', as: :mispendientes
  match '/stweet' => 'homes#stweet', as: :stweet

  match '/home2' => 'homes#home2', as: :home2
match "/posts/:id/send_post" => "posts#send_post", as: :send_post

  match "versions/:id/revert" => "versions#revert", :as => "revert_version"



match "/llamadas/:id/convertir_llamada" => "llamadas#convertir_llamada", as: :convertir_llamada
match "/memos/:id/convertir_memo" => "memos#convertir_memo", as: :convertir_memo
match "/tareas/:id/convertir_tarea" => "tareas#convertir_tarea", as: :convertir_tarea


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
