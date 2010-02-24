# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sistema_session',
  :secret      => '6744df85199d6444d935de6347e0db14a35d7a0688cf0769c45dd8971a361c1ae209fe50d2515ae6bbf5a230e1b93fd1ec5106fe7afae338e2bce5480eff8938'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
