class TraktApi::Recommendations < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/recommendations-movies
  def movies(options)
    auth.post('recommendations/movies').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-movies-dismiss
  def movies_dismiss(options)
    auth.post('recommendations/movies/dismiss').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-shows
  def shows(options)
    auth.post('recommendations/shows').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-shows-dismiss
  def shows_dismiss(options)
    auth.post('recommendations/shows/dismiss').params(options).response
  end
end
