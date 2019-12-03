class ShowtimesController < ApplicationController
  def show
    @showtime = Showtime.find(params[:id])
    @theaters = Theater.all
  end
end
