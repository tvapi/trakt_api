class TraktApi::Search < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/search-episodes
  def episodes(options = {})
    get("search/episodes.json/#{shared_uri(options, [:query, :limit])}").response
  end

  # documentation: http://trakt.tv/api-docs/search-movies
  def movies(options = {})
    get("search/movies.json/#{shared_uri(options, [:query, :limit])}").response
  end

  # documentation: http://trakt.tv/api-docs/search-people
  def people(options = {})
    get("search/people.json/#{shared_uri(options, [:query, :limit])}").response
  end

  # documentation: http://trakt.tv/api-docs/search-shows
  def shows(options = {})
    get("search/shows.json/#{shared_uri(options, [:query, :limit, :season])}").response
  end

  # documentation: http://trakt.tv/api-docs/search-users
  def users(options = {})
    get("search/users.json/#{shared_uri(options, [:query, :limit])}").response
  end

  def shared_uri(options, fields)
    "#{api_key}#{query_params(options, fields)}"
  end
end
