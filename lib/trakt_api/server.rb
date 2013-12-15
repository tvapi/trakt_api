class TraktApi::Server < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/server-time
  def time
    get('server/time').response
  end
end
