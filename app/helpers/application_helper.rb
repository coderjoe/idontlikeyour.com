# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def get_title( phrase )
    "I don't like your " + phrase
  end

  def footer_links
    link_to_unless_current( 'Home', { :action => :index } ) + ' | ' +
    link_to_unless_current( 'About', { :action => :about } ) + ' | ' + 
    link_to_unless_current( 'Who is that?', { :action => :who } ) + ' | ' +
    "Copywrite &copy; 2009 Joe Bauser"
  end
end
