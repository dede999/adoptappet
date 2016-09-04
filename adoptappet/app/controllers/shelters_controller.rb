class SheltersController < ApplicationController
  def create
    @shelter = Shelter.new(params.require(:shelter).permit(:name, :address, :description, :email, :picture))

    @shelter.save
    redirect_to @shelter
  end

  def index
    @shelter = Shelter.all
  end

  def new
  end

  def show
    @shelter = Shelter.find(params[:id])
  end
end
