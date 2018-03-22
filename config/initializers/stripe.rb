Rails.configuration.stripe={
    :publishable_key => Rails.application.secrets.pk_stripe,
    :secret_key => Rails.application.secrets.sk_stripe
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
