class TraktApi::Show < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/show-cancelcheckin
  def cancel_checkin
    auth.post('show/cancelcheckin').response
  end

  # documentation: http://trakt.tv/api-docs/show-cancelwatching
  def cancel_watching
    auth.post('show/cancelwatching').response
  end

  # documentation: http://trakt.tv/api-docs/show-checkin
  def check_in(options = {})
    auth.post('show/checkin').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-comments
  def comments(options = {})
    get('show/comments').params(options).restful_params([:title, :type]).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-comments
  def episode_comments(options = {})
    get('show/episode/comments').params(options).restful_params([:title, :season, :episode, :type]).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-library
  def episode_library(options = {})
    auth.post('show/episode/library').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-seen
  def episode_seen(options = {})
    auth.post('show/episode/seen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-stats
  def episode_stats(options = {})
    get('show/episode/stats').params(options).restful_params([:title, :season, :episode]).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-summary
  def episode_summary(options = {})
    get('show/episode/summary').params(options).restful_params([:title, :season, :episode]).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-unlibrary
  def episode_unlibrary(options = {})
    auth.post('show/episode/unlibrary').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-unseen
  def episode_unseen(options = {})
    auth.post('show/episode/unseen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-unwatchlist
  def episode_unwatch_list(options = {})
    auth.post('show/episode/unwatchlist').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-watchingnow
  def episode_watching_now(options = {})
    get('show/episode/watchingnow').params(options).restful_params([:title, :season, :episode]).response
  end

  # documentation: http://trakt.tv/api-docs/show-episode-watchlist
  def episode_watch_list(options = {})
    auth.post('show/episode/watchlist').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-library
  def library(options = {})
    auth.post('show/library').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-related
  def related(options = {})
    get('show/related').params(options).restful_params([:title, :extended, :hidewatched]).response
  end

  # documentation: http://trakt.tv/api-docs/show-scrobble
  def scrobble(options = {})
    auth.post('show/scrobble').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-season
  def season(options = {})
    get('show/season').params(options).restful_params([:title, :season]).response
  end

  # documentation: http://trakt.tv/api-docs/show-season-library
  def season_library(options = {})
    auth.post('show/season/library').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-season-seen
  def season_seen(options = {})
    auth.post('show/season/seen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-seasons
  def seasons(options = {})
    get('show/seasons').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/show-seen
  def seen(options = {})
    auth.post('show/seen').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-stats
  def stats(options = {})
    get('show/stats').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/show-summary
  def summary(options = {})
    get('show/summary').params(options).restful_params([:title, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/show-summaries
  def summaries(options = {})
    get('show/summaries').restful_params(options, [:title, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/show-unlibrary
  def unlibrary(options = {})
    auth.post('show/unlibrary').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-unwatchlist
  def unwatch_list(options = {})
    auth.post('show/unwatchlist').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-watching
  def watching(options = {})
    auth.post('show/watching').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/show-watchingnow
  def watching_now(options = {})
    get('show/watchingnow').params(options).restful_params([:title]).response
  end

  # documentation: http://trakt.tv/api-docs/show-watchlist
  def watch_list(options = {})
    auth.post('show/watchlist').params(options).response
  end
end
