require 'service_api'
require 'string_to_sha1'

class TraktApi::Base
  include ServiceApi::BaseFaraday

  private

  def uri_kind
    :colon
  end

  def base_url
    'http://api.trakt.tv/'
  end
end
