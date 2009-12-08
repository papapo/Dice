# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dice_session',
  :secret      => 'dd172d23bd82f606d9aca5cf4279f67b4f0ee53beaffdcc7862e2419b62a03252727c16fc6cb7f6a530b7e2aeddc07b6b2543ec08926a269714fa2e0850a1146'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
