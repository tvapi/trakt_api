class TraktApi::Search < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/search-episodes
  def episodes(options = {})
    get('search/episodes').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/search-movies
  def movies(options = {})
    get('search/movies').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/search-people
  def people(options = {})
    get('search/people').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/search-shows
  def shows(options = {})
    get('search/shows').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/search-users
  def users(options = {})
    get('search/users').params(options).response
  end
end
