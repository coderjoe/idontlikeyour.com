class PagesController < ApplicationController
  def index
    @phrase = params[:phrase] || "foods which smell like poop!"
  end
end
