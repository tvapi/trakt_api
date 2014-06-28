class TraktApi::Search < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/search-episodes
  def episodes(options = {})
    episodes_path_with_params(options).get
  end

  def episodes_url(options = {})
    episodes_path_with_params(options).url
  end

  # documentation: http://trakt.tv/api-docs/search-movies
  def movies(options = {})
    movies_path_with_params(options).get
  end

  def movies_url(options = {})
    movies_path_with_params(options).url
  end

  # documentation: http://trakt.tv/api-docs/search-people
  def people(options = {})
    people_path_with_params(options).get
  end

  def people_url(options = {})
    people_path_with_params(options).url
  end

  # documentation: http://trakt.tv/api-docs/search-shows
  def shows(options = {})
    shows_path_with_params(options).get
  end

  def shows_url(options = {})
    shows_path_with_params(options).url
  end

  # documentation: http://trakt.tv/api-docs/search-users
  def users(options = {})
    users_path_with_params(options).get
  end

  def users_url(options = {})
    users_path_with_params(options).url
  end

  private

  def episodes_path_with_params(options)
    path(episodes_path).params(api_key_options.merge(options))
  end

  def episodes_path
    'search/episodes.json/:api_key'
  end

  def movies_path_with_params(options)
    path(movies_path).params(api_key_options.merge(options))
  end

  def movies_path
    'search/movies.json/:api_key'
  end

  def people_path_with_params(options)
    path(people_path).params(api_key_options.merge(options))
  end

  def people_path
    'search/people.json/:api_key'
  end

  def shows_path_with_params(options)
    path(shows_path).params(api_key_options.merge(options))
  end

  def shows_path
    'search/shows.json/:api_key'
  end

  def users_path_with_params(options)
    path(users_path).params(api_key_options.merge(options))
  end

  def users_path
    'search/users.json/:api_key'
  end
end
