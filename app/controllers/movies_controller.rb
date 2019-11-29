class MoviesController < ApplicationController
  before_action :set_coordinates, only: [:index]

  def index
    @categories = Movie.distinct.pluck(:category)
    if session[:latitude].nil?
      @theaters = Theater.all
    else
      @theaters = Theater.geocoded.near([session[:latitude].to_f, session[:longitude].to_f], 5)
    end
    idstheaters = @theaters.collect(&:id)
    @showtimes = Showtime.where(theater_id: idstheaters)
    @movies = Movie.where(id: @showtimes.distinct.pluck(:movie_id))
  end

  def show
    @movie = Movie.find(params[:id])
    @theaters = @movie.theaters.geocoded.near([session[:latitude].to_f, session[:longitude].to_f], 20)
    @icon = Octicons::Octicon.new("dash")
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :description, :category, :director, :cast, :duration, :rating)
  end

  def set_coordinates
    session[:longitude] = params[:lng]
    session[:latitude] = params[:lat]
  end
end
