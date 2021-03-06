Ddjj3::Application.routes.draw do
  
  get "adm_ddjj/verDDJJAgente"

  get "adm_ddjj/ListarDDJJsIncompatibles"

  get "adm_ddjj/ListarDDJJsEscuela"

  get "adm_ddjj/ListarDDJJsAgente"

  get "adm_ddjj/AprobarItemDDJJ"

  get "adm_ddjj/ObservarItemDDJJ"

  get "adm_ddjj/RechazarItemDDJJ"

  get "adm_ddjj/AgregarItemDDJJ"

  get "adm_ddjj/EditarItemDDJJ"

  get "adm_ddjj/EliminarItemDDJJ"

  get "adm_ddjj/EditarGrupoHorarioItemDDJJ"

  get "adm_ddjj/AgregarGrupoHorarioItemDDJJ"

  get "adm_ddjj/EliminarGrupoHorarioItemDDJJ"

  get "adm_ddjj/verDDJJ"

  get "adm_ddjj/verDDJJsAgente"

  get "adm_ddjj/ModificarDDJJ"

  get "adm_ddjj/CargarDDJJ"

  get "adm_ddjj/ListarDDJJs"

  get "adm_ddjj/ListarDDJJsI"

  get "adm_ddjj/verDdjj"

  get "adm_ddjj/ModificarDdjj"

  get "adm_ddjj/CargarDdjj"

  get "adm_ddjj/ListarDdjjs"

  get "adm_ddjj/EliminarDdjj"



  resources :grupo_horario_item_ddjjs

  resources :item_ddjjs

  resources :materia_cargos

  resources :funcions

  resources :ddjjs

  resources :localidads

  resources :provincias

  resources :organizacions

  resources :domicilios

  resources :users

  get "session/login"

  get "session/logout"

  post "relacion_agente_profesion/guardar"
  
 
  #scope :module => 'relacion_agente_profesion' do
   # resources :guardar
  #end
        
  get "relacion_agente_profesion/agregarProfesionAgente"

  resources :profesion_agentes

  resources :profesions

  resources :agentes

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
