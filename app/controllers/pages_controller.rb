class PagesController < ApplicationController
  def index
    @phrase = params[:phrase] || "foods which smell like poop!"
  end

  def about
    @phrase = 'request for information about this site!'
  end

  def who
    @phrase = 'ignorance about who I am!'
  end

  def robot
    @phrase = params[:phrase] || 'BZZZZZZZZZT BLEEP BLEEP BLOOP BLOOP!'
    @face_image = 'robot'
  end
end
