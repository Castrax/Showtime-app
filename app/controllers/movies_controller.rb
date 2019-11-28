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
    idstheaters = @movie.showtimes.distinct.pluck(:theater_id)
    @theaters = Theater.where(id: idstheaters).geocoded.near([session[:latitude].to_f, session[:longitude].to_f], 20) #à modifier quand on aura la géoloc : chercher les cinémas dont la distance avec le current_user est < à 5km + afficher les cinémas par ordre croissant de distance dans la show).
    # @showtimes = Showtime.where(movie_id: @movie, theater_id: @theater)
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
