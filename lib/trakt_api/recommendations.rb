class TraktApi::Recommendations < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/recommendations-movies
  def movies(options)
    auth.post("recommendations/movies.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-movies-dismiss
  def movies_dismiss(options)
    auth.post("recommendations/movies/dismiss.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-shows
  def shows(options)
    auth.post("recommendations/shows.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/recommendations-shows-dismiss
  def shows_dismiss(options)
    auth.post("recommendations/shows/dismiss.json/#{api_key}", options).response
  end
end
