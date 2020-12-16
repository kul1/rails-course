require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Project4
  class Application < Rails::Application

    # Jinda default
    config.generators do |g|
      g.orm             :mongoid
      g.template_engine :haml
      g.test_framework  :rspec
      g.integration_tool :rspec
    end

    # config time zone
    config.time_zone = "Central Time (US & Canada)"

    # gmail config
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    #   :address              => "smtp.gmail.com",
    #   :port                 => 587,
    #   :user_name            => 'user@gmail.com',
    #   :password             => 'secret',
    #   :authentication       => 'plain',
    #   :enable_starttls_auto => true  }
    # config.action_mailer.raise_delivery_errors = true
    # config.action_mailer.perform_deliveries = true
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end