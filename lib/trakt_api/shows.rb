class TraktApi::Shows < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/shows-trending
  def trending(options = {})
    get('shows/trending').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/shows-updated
  def updated(options = {})
    get('shows/updated').params(options).restful_params([:time]).response
  end
end
