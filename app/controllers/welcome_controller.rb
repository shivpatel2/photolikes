class WelcomeController < ApplicationController
  def index
    @posts = Photo.all
  end
end
