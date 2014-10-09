# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_server_session',
  :secret      => '84b8292d2a9079f8c1ea7ff723c0991f116e31a7e8de692bf8ed4e2d92299a0a30ba5c1f1d6fc4dd77fcc44c554af0a8aefbcd71a6e1ee142aa69d1b52b393b3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
