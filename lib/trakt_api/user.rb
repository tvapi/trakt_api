class TraktApi::User < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/user-calendar-shows
  def calendar_shows(options = {})
    get('user/calendar/shows').params(options).restful_params([:username, :date, :days]).response
  end

  # documentation: http://trakt.tv/api-docs/user-lastactivity
  def last_activity(options = {})
    get('user/lastactivity').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-all
  def library_movies_all(options = {})
    get('user/library/movies/all').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-collection
  def library_movies_collection(options = {})
    get('user/library/movies/collection').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-watched
  def library_movies_watched(options = {})
    get('user/library/movies/watched').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-all
  def library_shows_all(options = {})
    get('user/library/shows/all').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-collection
  def library_shows_collection(options = {})
    get('user/library/shows/collection').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-watched
  def library_shows_watched(options = {})
    get('user/library/shows/watched').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-list
  def list(options = {})
    get('user/list').params(options).restful_params([:username, :slug]).response
  end

  # documentation: http://trakt.tv/api-docs/user-lists
  def lists(options = {})
    get('user/lists').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-followers
  def network_followers(options = {})
    get('user/network/followers').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-following
  def network_following(options = {})
    get('user/network/following').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-friends
  def network_friends(options = {})
    get('user/network/friends').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-profile
  def profile(options = {})
    get('user/profile').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-progress-collected
  def progress_collected(options = {})
    get('user/progress/collected').params(options).restful_params([:username, :title, :sort, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-progress-watched
  def progress_watched(options = {})
    get('user/progress/watched').params(options).restful_params([:username, :title, :sort, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-episodes
  def ratings_episodes(options = {})
    get('user/ratings/episodes').params(options).restful_params([:username, :rating, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-movies
  def ratings_movies(options = {})
    get('user/ratings/movies').params(options).restful_params([:username, :rating, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-shows
  def ratings_shows(options = {})
    get('user/ratings/shows').params(options).restful_params([:username, :rating, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watching
  def watching(options = {})
    get('user/watching').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-episodes
  def watchlist_episode(options = {})
    get('user/watchlist/episodes').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-movies
  def watchlist_movies(options = {})
    get('user/watchlist/movies').params(options).restful_params([:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-shows
  def watchlist_shows(options = {})
    get('user/watchlist/shows').params(options).restful_params([:username]).response
  end
end
