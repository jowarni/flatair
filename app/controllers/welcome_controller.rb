class WelcomeController < ApplicationController
  def index
    @flats = Flat.search(params[:search])
  end

  def search
    @flats = Flat.search(params[:search])
  end
end