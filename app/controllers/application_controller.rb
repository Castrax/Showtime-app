class ApplicationController < ActionController::Base
  before_action :set_coordinates
  before_action :authenticate_user!

  private

  def set_coordinates
    if session[:longitude] && session[:latitude]
      @geolocation = Geocoder.search([session[:latitude].to_f, session[:longitude].to_f]).first
    end
  end
end
