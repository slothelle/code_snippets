# Makes use of helper methods for session dirty work
# @user instance variable needed in sessions#create to use helpers

class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      create_session
      redirect_to user_path(@user.id)
    elsif @user.nil?
      @errors = "An account with the email address #{params[:email]} not found."
      render "new"
    else
      @errors = "Wrong password."
      render "new"
    end
  end
  def destroy
    end_session
    redirect_to root_path
  end
end