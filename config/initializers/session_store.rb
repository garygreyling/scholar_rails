# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scholar_session',
  :secret      => 'b19db645c4a3aa36decfa967876da6962a48f92e7765c39eb6b12cb6a46c502ee05525acd3c08e1049f67e616bfae10cf11c96c5918667b00251a3079a523e95'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
