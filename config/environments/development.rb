Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

# <Niyati - cahnge the belwo from false to true so that if anything goes wrong we get to know it>
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  # <Niyati - Add the 1 below line too to define the defalut url>
  config.action_mailer.default_url_options = { host: 'localhost', port:3000 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    # <Niyati - you change the details from what was copied and put it details of mailgun>
    address:              'smtp.mailgun.org',
    port:                 587,
    # <Niyati - domain name is from default SMTP login from mailgun and remove everything ebfore @, user name and pwd is also from there. We have exported it via the terminal and then adthed where to pick it up from
    domain:               ENV['MAILGUN_DOMAIN'],
    user_name:            'postmaster@' + ENV['MAILGUN_DOMAIN'],
    password:             ENV['MAILGUN_PASSWORD'],
    authentication:       'plain',
    # <Niyati - make it false in dev, in prod keep it true. its like SSL
    enable_starttls_auto: false  }

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
