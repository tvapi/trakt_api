class TraktApi::Movies < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/movies-trending
  def trending(options = {})
    optional_auth(options).get('movies/trending').response
  end

  # documentation: http://trakt.tv/api-docs/movies-updated
  def updated(options = {})
    get('movies/updated').restful_params(options, [:timestamp]).response
  end
end
