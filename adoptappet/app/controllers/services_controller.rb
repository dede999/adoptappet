class ServicesController < ApplicationController
  def all
    @user = current_user
    @service = Service.all
  end

  def create
    @user = current_user
    @service = Service.new(params.require(:service).permit(:name, :address, :phone, :email, :service_type, :about))
    @service.email = current_user.email
    @service.owner_id = current_user.id
    @service.save
    redirect_to user_service_path(@user.id, @service.id)
  end

  def edit
    @service = Service.find(params[:id])
  end

  def index
    @user = current_user
    @service = []
    all_services = Service.all

    all_services.each do |service|
      @service << service if service.owner_id == @user.id
    end
  end

  def show
    @user = current_user
    @service = Service.find(params[:id])
  end

  def update
    @user = current_user
    @service = Service.find(params[:id])

    if @service.update_attributes(params.require(:service).permit(:name, :address, :phone, :email, :service_type, :about))
      flash[:notice] = 'Service was successfully updated.'
      redirect_to user_service_path(@user.id, @service.id)
    else
      render "edit"
    end
  end
end
