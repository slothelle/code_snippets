# Living inside of the ApplicationHelper module because they are used by numerous controllers

module ApplicationHelper
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end

  def is_owner?
    current_user.id == params[:id].to_i
  end

  def create_session
    session[:current_user_id] = @user.id
  end

  def end_session
    session[:current_user_id] = nil
  end
end