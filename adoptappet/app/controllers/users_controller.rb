class UsersController < Devise::RegistrationsController
  def edit
    @user = current_user
  end
end
