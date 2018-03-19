class ChargesController < ApplicationController
  def create
// we make two calls from the api....the one to charge the customer & also to create a new customer

  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => '3 movie tickets for only 30$!',
    :currency    => 'usd'
  )
// error handling code , we want to re-direct customer to the root part , our hmoe page is where we will display any errors
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
