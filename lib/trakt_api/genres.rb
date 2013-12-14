class TraktApi::Genres < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/genres-movies
  def movies
    get("genres/movies.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/genres-shows
  def shows
    get("genres/shows.json/#{api_key}").response
  end
end
