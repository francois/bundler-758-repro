# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_newapp_session',
  :secret      => '7611ccf42e580e4a9a3fc04ce5a6b1575b4dbbe1262a2bd29cca8f7b60950603dad944ce9ad8ee78dc03d3b271b69b6968864a49d2c4b9f31f37020e4509d568'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
