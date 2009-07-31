# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yuyan_session',
  :secret      => 'a526adf6dbca2f8e3f6256695e7cd9af9f41c01e200a555792d53c0f355c3026309aed22a42d92f11156b9904e88fccd90def84501f4ca55aba675a2b8bc7526'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
