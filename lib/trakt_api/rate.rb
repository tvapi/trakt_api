class TraktApi::Rate < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/rate-episode
  def episode(options)
    auth.post('rate/episode').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/rate-episodes
  def episodes(options)
    auth.post('rate/episodes').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/rate-movie
  def movie(options)
    auth.post('rate/movie').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/rate-movies
  def movies(options)
    auth.post('rate/movies').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/rate-show
  def show(options)
    auth.post('rate/show').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/rate-shows
  def shows(options)
    auth.post('rate/shows').params(options).response
  end
end
