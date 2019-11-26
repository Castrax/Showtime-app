class MoviesController < ApplicationController
  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :description, :category, :director, :cast, :duration, :rating)
  end
end
