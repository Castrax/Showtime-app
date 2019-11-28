class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def favorite
    @user = current_user
    @movies = Movie.all
  end
end
