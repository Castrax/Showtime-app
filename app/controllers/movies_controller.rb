class MoviesController < ApplicationController
  def index
    @theaters = Theater.geocoded.near([session[:latitude].to_f, session[:longitude].to_f], 5)
    idstheaters = @theaters.collect(&:id)
    @showtimes = Showtime.where(theater_id: idstheaters)
    @movies = Movie.where(id: @showtimes.distinct.pluck(:movie_id))
  end

  def show
    @movie = Movie.find(params[:id])
    @theater = Theater.geocoded #à modifier quand on aura la géoloc : chercher les cinémas dont la distance avec le current_user est < à 5km + afficher les cinémas par ordre croissant de distance dans la show).
    @showtimes = Showtime.where(movie_id: @movie, theater_id: @theater)
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :description, :category, :director, :cast, :duration, :rating)
  end
end
