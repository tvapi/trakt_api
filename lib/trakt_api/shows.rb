class TraktApi::Shows < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/shows-trending
  def trending(options = {})
    optional_auth(options).get("shows/trending.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/shows-updated
  def updated(options = {})
    get("shows/updated.json/#{api_key}/#{options[:time].to_i}").response
  end
end
