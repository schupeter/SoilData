# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_theschuts_session',
  :secret      => 'd08fb4d7d540104108eb5e5de07ed1b5a38a637ede762c71f7c675413578956ff0a0a7ddc02097b467798033b7c1d91a5d8d98edd273ce67052dbc2f0797e45b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
