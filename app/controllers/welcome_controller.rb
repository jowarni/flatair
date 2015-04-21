class WelcomeController < ApplicationController
  def index
    @flats = Flat.all
  end

end