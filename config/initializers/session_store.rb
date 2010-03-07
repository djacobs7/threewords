# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wordsthree_session',
  :secret      => '6aff5fcfc0dcc8e894db3a225bbf7c8b206b9486a85dc424518b5440af9d0187e25b7b32f80422968c1941283704eae8322e2d7efbd307b820de9aee66f5a821'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
