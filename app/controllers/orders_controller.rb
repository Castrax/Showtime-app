class OrdersController < ApplicationController

  def create

    showtime = Showtime.find(params[:showtime_id])
    @order = Order.create!(showtime: showtime, showtime_sku: showtime.sku, amount: showtime.price_cents * params[:number_of_seats].to_i, state: 'pending', user: current_user)

    Stripe.api_key = 'sk_test_7f5ilQTjtoX0wzLsWEdvYm6K00oWJslNHU'

    intent = Stripe::PaymentIntent.create(
      amount: showtime.price_cents * params[:number_of_seats].to_i,
      currency: 'eur'
    )

    @order.update(payment_intent: intent.client_secret)

    redirect_to new_order_payment_path(@order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
