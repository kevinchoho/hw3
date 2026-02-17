class PlacesController < ApplicationController
  def index
    @places = Place.all.order(created_at: :desc)
  end

  def show
    @place = Place.find(params[:id])
    @entries = @place.entries.order(date: :desc)
    @new_entry = @place.entries.new 
  end

  def new
    @place = Place.new 
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path, notice: "Place added successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def place_params
      params.require(:place).permit(:name)
    end
end