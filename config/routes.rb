ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'index'
  map.about 'about', :controller => 'pages', :action => 'about'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
