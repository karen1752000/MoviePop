class PaymentsController < ApplicationController

	def new
end
# Amount in cents
def create
	@amount = 1400

	customer = Stripe::Customer.create(
		email: params[:stripeEmail],
		source: params[:stripeToken]
		)

	charge = Stripe::Charge.create(
		customer: customer.id,
		amount:  @amount,
		description:'Rails stripe customer',
		currency: 'usd'
		)

rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to new_charge_path
end

end