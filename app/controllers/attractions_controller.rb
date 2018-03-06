class AttractionsController < ApplicationController

  before_action :set_attraction, only: [:show, :edit]

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
  else
      redirect_to new_attraction_path
    end
  end

  def show
    @ride = Ride.new
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  def edit 

  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    redirect_to attraction_path(@user)
  end

  private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end

end