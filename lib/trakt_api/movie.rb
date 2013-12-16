class TraktApi::Movie < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/movie-cancelcheckin
  def cancel_check_in
    auth.post('movie/cancelcheckin').response
  end

  # documentation: http://trakt.tv/api-docs/movie-cancelwatching
  def cancel_watching
    auth.post('movie/cancelwatching').response
  end

  # documentation: http://trakt.tv/api-docs/movie-checkin
  def check_in(options = {})
    auth.post('movie/checkin').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-comments
  def comments(options = {})
    get('movie/comments').restful_params(options, [:title, :type]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-scrobble
  def scrobble(options = {})
    auth.post('movie/scrobble').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-seen
  def seen(options = {})
    auth.post('movie/seen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-library
  def library(options = {})
    auth.post('movie/library').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-related
  def related(options = {})
    get('movie/related').params(options).restful_params([:title, :hidewatched]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-stats
  def stats(options = {})
    get('movie/stats').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-summary
  def summary(options = {})
    get('movie/summary').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-summaries
  def summaries(options = {})
    get('movie/summaries').params(options).restful_params([:title, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unlibrary
  def unlibrary(options = {})
    auth.post('movie/unlibrary').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unseen
  def unseen(options = {})
    auth.post('movie/unseen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unwatchlist
  def unwatch_list(options = {})
    auth.post('movie/unwatchlist').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watching
  def watching(options = {})
    auth.post('movie/watching').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watchingnow
  def watching_now(options = {})
    get('movie/watchingnow').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watchlist
  def watch_list(options = {})
    auth.post('movie/watchlist').params(options).response
  end
end
