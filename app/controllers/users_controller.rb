class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    current_user.phone_number = user_params[:phone_number]
    current_user.save
    @user = current_user
    render :edit
  end

  private

  def user_params
    params.require(:user).permit(:phone_number)
  end
end