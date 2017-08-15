require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module TrackFitApp
  class Application < Rails::Application
    config.action_mailer.default_url_options = { host: 'http://trackfit-ojaskulkarni.c9users.io:8080' }
  end
end



