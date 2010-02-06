class PagesController < ApplicationController
  def index
    @phrase = params[:phrase] || "foods which smell like poop!"
  end

  def about
    @phrase = 'request for information about this site!'
  end
end
