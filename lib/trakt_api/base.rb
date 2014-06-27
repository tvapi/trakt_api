require 'service_api'
require 'string_to_sha1'

class TraktApi::Base
  include ServiceApi::BaseFaraday

  def auth
    connection.basic_auth(@client.options[:username], @client.options[:password])
    self
  end

  def api_key_options
    { api_key: @client.options[:api_key] }
  end

  private

  def uri_kind
    :colon
  end

  def base_url
    'http://api.trakt.tv/'
  end
end
