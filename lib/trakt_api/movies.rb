class TraktApi::Movies < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/movies-trending
  def trending(options = {})
    get('movies/trending').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movies-updated
  def updated(options = {})
    get('movies/updated').params(options).restful_params([:timestamp]).response
  end
end
