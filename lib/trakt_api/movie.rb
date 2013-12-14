class TraktApi::Movie < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/movie-cancelcheckin
  def cancel_checkin
    auth.post("movie/cancelcheckin.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/movie-cancelwatching
  def cancel_watching
    auth.post("movie/cancelwatching.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/movie-checkin
  def checkin(options = {})
    auth.post("movie/checkin.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-comments
  def comments(options = {})
    get(prepare_uri('movie/comments.json', options, [:title, :type])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-scrobble
  def scrobble(options = {})
    auth.post("movie/scrobble.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-seen
  def seen(options = {})
    auth.post("movie/seen.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-library
  def library(options = {})
    auth.post("movie/library.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-related
  def related(options = {})
    optional_auth(options).get(prepare_uri('movie/related.json', options, [:title, :hidewatched])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-stats
  def stats(options = {})
    get(prepare_uri('movie/stats.json', options, [:title])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-summary
  def summary(options = {})
    optional_auth(options).get(prepare_uri('movie/summary.json', options, [:title])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-summaries
  def summaries(options = {})
    get(prepare_uri('movie/summaries.json', options, [:title, :extended])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unlibrary
  def unlibrary(options = {})
    auth.post("movie/unlibrary.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unseen
  def unseen(options = {})
    auth.post("movie/unseen.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-unwatchlist
  def unwatch_list(options = {})
    auth.post("movie/unwatchlist.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watching
  def watching(options = {})
    auth.post("movie/watching.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watchingnow
  def watching_now(options = {})
    optional_auth(options).get(prepare_uri('movie/watchingnow.json', options, [:title])).response
  end

  # documentation: http://trakt.tv/api-docs/movie-watchlist
  def watch_list(options = {})
    auth.post("movie/watchlist.json/#{api_key}", options).response
  end
end
