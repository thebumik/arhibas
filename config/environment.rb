RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# bootstrap the rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  # use current load order for plugins
  config.plugins = [:exception_notification, :all]

  # default timezone
  config.time_zone = 'Bucharest'
end

# haml configuration
Haml::Template.options = { :format => :xhtml, :ugly => false }

MISSING_TRANSLATION = '! missing translation...'