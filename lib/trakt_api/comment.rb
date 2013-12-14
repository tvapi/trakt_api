class TraktApi::Comment < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/comment-episode
  def episode(options)
    auth.post("comment/episode.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/comment-movie
  def movie(options)
    auth.post("comment/movie.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/comment-show
  def show(options)
    auth.post("comment/show.json/#{api_key}", options).response
  end
end
