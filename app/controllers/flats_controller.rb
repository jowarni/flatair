class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(paramas[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :kind, :capacity, :price, :street, :zip_code, :city, :country, :description)
  end
end
