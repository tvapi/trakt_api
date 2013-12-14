class TraktApi::Movies < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/movies-trending
  def trending(options = {})
    optional_auth(options).get("movies/trending.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/movies-updated
  def updated(options = {})
    get("movies/updated.json/#{api_key}/#{options[:time].to_i}").response
  end
end
