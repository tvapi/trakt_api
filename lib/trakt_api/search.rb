class TraktApi::Search < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/search-episodes
  def episodes(options = {})
    get("search/episodes.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/search-movies
  def movies(options = {})
    get("search/movies.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/search-people
  def people(options = {})
    get("search/people.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/search-shows
  def shows(options = {})
    get("search/shows.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/search-users
  def users(options = {})
    get("search/users.json/#{api_key}", options).response
  end
end
