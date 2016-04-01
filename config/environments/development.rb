Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  
  # Env var
  ENV["ADMIN_PASSWORD"] = "admin123"
  ENV["SECRET_KEY_DEVISE"] = "89c9b5bc1a399795072376c64203e38b7bd8a6d1b1d14756c7fe90ee9a18e23eef1ba901e1f055bd9df53eabfdc4d026dc94"

  # Mail
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address        => 'smtp.gmail.com',
    :domain         => 'mail.google.com',
    :port           => 587,
    :user_name      => 'the.sclmkt.dev@gmail.com',
    :password       => 'Hec42Telecom',
    :authentication => :plain
  }

  # Stripe
  ENV["SECRET_KEY_STRIPE"] = "sk_test_SZj8vmNPm3gNsW9qjoR536Bk"
  ENV["PUBLISHABLE__KEY_STRIPE"] = "pk_test_CS7KYc6E7wJ5bZ6RXfOtcAp8"
end
