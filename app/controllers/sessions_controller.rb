class SessionsController < ApplicationController

  def new
    redirect_to root_path if logged_in?
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end

end
