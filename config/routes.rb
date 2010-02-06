ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'index'

  map.robot 'robot', :controller => 'pages', :action => 'robot'
  map.about 'about', :controller => 'pages', :action => 'about'
  map.who 'who', :controller => 'pages', :action => 'who'

  map.connect 'robot/:phrase', :controller => 'pages', :action => 'robot'
  map.connect ':phrase', :controller => 'pages', :action => 'index'
end
