class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:phones, :update]
  def phones
    @phones = User.first
    render 'users/phone'
  end

  def update
    User.first.update_attributes(user_params)
    @phones = User.first
    render 'users/phone'
  end

  def show

  end

  private

  def user_params
      params.permit(:naphone_kinh_doanhme, :phone_ky_thuat, :phone_thiet_ke)
    end
end
