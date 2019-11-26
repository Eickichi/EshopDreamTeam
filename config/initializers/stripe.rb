Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_XngdHPDgk89DTQnIt0zFveeL00Tpy3h3GM'],
  :secret_key      => ENV['sk_test_z2UrQ7TvOoaWtjqwFL3AyLHq00lDTviWkc']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]