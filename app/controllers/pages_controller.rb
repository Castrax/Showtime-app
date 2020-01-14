class PagesController < ApplicationController
  def home
  end

  def favorite
    @user = current_user
    @movies = Movie.all
  end
end
