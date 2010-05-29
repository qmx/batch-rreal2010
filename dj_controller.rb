# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def reset_password
    @user = User.find(params[:id])
    Delayed::Job.enqueue(DelayedResetPassword.new(@user, @user.reset_password)
  end
end

