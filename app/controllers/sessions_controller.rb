class SessionsController < ApplicationController
  def new
    # @session = Session.new
  end

  def create
    session[:current_email] = params[:session][:email]
    redirect_to root_path
  end
end
