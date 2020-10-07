require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module S3Refile
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

Refile.secret_key = '321b5c8b0c1a7a3da520b0f3051387b22bd0a83a5bd2c56fea8058e49e029b4cd4eee3b99387957b4cbf6aca1d4bb0ab16c25d8e331f1e326fb50c5c69bfa606'