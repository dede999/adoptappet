class SheltersController < ApplicationController
  def all
    @user = current_user
    @shelter = Shelter.all
  end

  def create
    @user = current_user
    @shelter = Shelter.new(params.require(:shelter).permit(:name, :address, :phone, :pets_available, :about))
    @shelter.email = current_user.email
    @shelter.owner_id = current_user.id
    @shelter.save
    redirect_to user_shelter_path(@user.id, @shelter.id)
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def index
    @user = current_user
    @shelter = []
    all_shelters = Shelter.all

    all_shelters.each do |shelter|
      @shelter << shelter if shelter.owner_id == @user.id
    end
  end

  def show
    @user = current_user
    @shelter = Shelter.find(params[:id])
  end

  def update
    @user = current_user
    @shelter = Shelter.find(params[:id])

    if @shelter.update_attributes(params.require(:shelter).permit(:name, :address, :phone, :pets_available, :about))
      flash[:notice] = 'Shelter was successfully updated.'
      redirect_to user_shelter_path(@user.id, @shelter.id)
    else
      render "edit"
    end
  end
end
