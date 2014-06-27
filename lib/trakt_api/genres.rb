class TraktApi::Genres < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/genres-movies
  def movies
    movies_path_with_params.get
  end

  def movies_url
    movies_path_with_params.url
  end

  # documentation: http://trakt.tv/api-docs/genres-shows
  def shows
    shows_path_with_params.get
  end

  def shows_url
    shows_path_with_params.url
  end

  private

  def path_with_params(request_path)
    path(request_path).params(api_key_options)
  end

  def movies_path_with_params
    path_with_params(movies_path)
  end

  def movies_path
    'genres/movies.json/:api_key'
  end

  def shows_path_with_params
    path_with_params(shows_path)
  end

  def shows_path
    'genres/shows.json/:api_key'
  end
end
