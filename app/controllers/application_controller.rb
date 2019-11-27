class ApplicationController < ActionController::Base
  before_action :set_coordinates
  before_action :authenticate_user!

  private

  def set_coordinates
    session[:longitude] = params[:lng]
    session[:latitude] = params[:lat]
  end
end
