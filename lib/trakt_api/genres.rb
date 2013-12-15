class TraktApi::Genres < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/genres-movies
  def movies
    get('genres/movies').response
  end

  # documentation: http://trakt.tv/api-docs/genres-shows
  def shows
    get('genres/shows').response
  end
end
