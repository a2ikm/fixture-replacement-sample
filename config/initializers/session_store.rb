# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fixture_replacement_session',
  :secret      => '955f6773d4dffa15446ce708821a1c594bcbf7d8fba969fc82cb580d21de3ea3d8072753d5ff2d40d7cd59d8b40a66a1f1f2054f8566ad03941800fbd4d27bca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
