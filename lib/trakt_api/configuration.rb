require 'confiture'

class TraktApi::Configuration
  include Confiture::Configuration

  confiture_allowed_keys(:api_key, :username, :password)

  def self.api_url
    'http://api.trakt.tv/'
  end
end
