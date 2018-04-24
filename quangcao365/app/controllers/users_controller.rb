class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:phones]
  def phones
    @phones = User.first
    render 'users/phone'
  end
end
