class TraktApi::Server < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/server-time
  def time
    get("server/time.json/#{api_key}").response
  end
end
