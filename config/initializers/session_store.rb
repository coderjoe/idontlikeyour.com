# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_idontlikeyour.com_session',
  :secret      => '7f3bbb04ef798e8db2d3b01aa9bec2fe8ce12f2737da14f5dd9bb62e2df4a10c8c2b7a2c2a6590346ed0e39b2c795f82af239f29c034c88e159ad91b67dd7a91'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
