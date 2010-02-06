ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'index'
  map.about 'about', :controller => 'pages', :action => 'about'
  map.who 'who', :controller => 'pages', :action => 'who'

  map.connect ':phrase', :controller => 'pages', :action => 'index'
end
