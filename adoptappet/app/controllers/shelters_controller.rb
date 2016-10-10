class SheltersController < ApplicationController
  def create
    @user = current_user
    @shelter = Shelter.new(params.require(:shelter).permit(:name, :address, :phone, :pets_available, :about))

    p @shelter.about

    @shelter.email = current_user.email
    @shelter.save
    redirect_to user_shelter_path(@user.id, @shelter.id)
  end

  def edit
    @user = current_user
  end

  def index
    @user = current_user
    @shelter = Shelter.all
  end

  def show
    @user = current_user
    @shelter = Shelter.find(params[:id])
  end
end
