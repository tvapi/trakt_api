require 'confiture'

class TraktApi::Configuration
  include Confiture::Configuration

  confiture_allowed_keys(:api_key, :username, :password)
end
