class OrdersController < ApplicationController
  def create
    showtime = Showtime.find(params[:showtime_id])
    @order = Order.create!(showtime: showtime, showtime_sku: showtime.sku, amount: showtime.price_cents * params[:number_of_seats].to_i, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: showtime.sku,
        amount: showtime.price_cents * params[:number_of_seats].to_i,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: session.id)

    respond_to do |format|
      format.js
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def pass
    @order = Order.find(params[:order_id])
    res = HTTP.post(
      'https://passe-passe.herokuapp.com/passes',
      json: {
        movie_name: @order.showtime.movie.title,
        theater_name: @order.showtime.theater.name,
        time: @order.showtime.start_hour.to_time.iso8601,
        secret_key: ENV["PASSES_SECRET_KEY"]
      }
    )
    render plain: res.body, content_type: 'application/vnd.apple.pkpass'
  end
end
