class TraktApi::Shows < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/shows-trending
  def trending(options = {})
    optional_auth(options).get('shows/trending').response
  end

  # documentation: http://trakt.tv/api-docs/shows-updated
  def updated(options = {})
    get('shows/updated').restful_params(options, [:time]).response
  end
end
