class TraktApi::Server < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/server-time
  def time
    path_with_params.get
  end

  def time_url
    path_with_params.url
  end

  private

  def path_with_params
    path(time_path).params(api_key_options)
  end

  def time_path
    'server/time.json/:api_key'
  end
end
