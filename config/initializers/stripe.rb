<<<<<<< HEAD
Rails.configuration.stripe={
	:publishable_key => ENV['PUBLISHABLE_KEY'],
	:secret_key => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
=======
Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
>>>>>>> f2ced973a9fed74d7ea5e9f89b99e98f6223f696
