class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @flat = Flat.find(params[:id])
    @flat_coordinates = [{ lat: @flat.latitude, lng: @flat.longitude}]
    @alert_message = "You are viewing #{@flat.title}"
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = current_user.flats.build(flat_params)

    if @flat.save
      redirect_to users_flats_path
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :kind, :capacity, :price, :street, :zip_code, :city, :country, :description, :picture)
  end
end