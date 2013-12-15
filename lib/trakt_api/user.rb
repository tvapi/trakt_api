class TraktApi::User < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/user-calendar-shows
  def calendar_shows(options = {})
    optional_auth(options).get('user/calendar/shows').restful_params(options, [:username, :date, :days]).response
  end

  # documentation: http://trakt.tv/api-docs/user-lastactivity
  def last_activity(options = {})
    optional_auth(options).get('user/lastactivity').restful_params(options, [:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-all
  def library_movies_all(options = {})
    optional_auth(options).get('user/library/movies/all').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-collection
  def library_movies_collection(options = {})
    optional_auth(options).get('user/library/movies/collection').restful_params(options, [:username]).params(options).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-library-movies-watched
  def library_movies_watched(options = {})
    optional_auth(options).get('user/library/movies/watched').restful_params(options, [:username]).params(options).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-all
  def library_shows_all(options = {})
    optional_auth(options).get('user/library/shows/all').restful_params(options, [:username]).params(options).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-collection
  def library_shows_collection(options = {})
    optional_auth(options).get('user/library/shows/collection').restful_params(options, [:username]).params(options).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-library-shows-watched
  def library_shows_watched(options = {})
    optional_auth(options).get('user/library/shows/watched').restful_params(options, [:username]).params(options).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-list
  def list(options = {})
    optional_auth(options).get('user/list').restful_params(options, [:username, :slug]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-lists
  def lists(options = {})
    optional_auth(options).get('user/lists').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-followers
  def network_followers(options = {})
    optional_auth(options).get('user/network/followers').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-following
  def network_following(options = {})
    optional_auth(options).get('user/network/following').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-network-friends
  def network_friends(options = {})
    optional_auth(options).get('user/network/friends').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-profile
  def profile(options = {})
    optional_auth(options).get('user/profile').restful_params(options, [:username]).params(options).response
  end

  # documentation: http://trakt.tv/api-docs/user-progress-collected
  def progress_collected(options = {})
    optional_auth(options).get('user/progress/collected').
      restful_params(options, [:username, :title, :sort, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-progress-watched
  def progress_watched(options = {})
    optional_auth(options).get('user/progress/watched').restful_params(options, [:username, :title, :sort, :extended]).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-episodes
  def ratings_episodes(options = {})
    optional_auth(options).get('user/ratings/episodes').restful_params(options, [:username, :rating, :extended]).
      response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-movies
  def ratings_movies(options = {})
    optional_auth(options).get('user/ratings/movies').restful_params(options, [:username, :rating, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-ratings-shows
  def ratings_shows(options = {})
    optional_auth(options).get('user/ratings/shows').restful_params(options, [:username, :rating, :extended]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watching
  def watching(options = {})
    optional_auth(options).get('user/watching').restful_params(options, [:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-episodes
  def watchlist_episode(options = {})
    optional_auth(options).get('user/watchlist/episodes').restful_params(options, [:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-movies
  def watchlist_movies(options = {})
    optional_auth(options).get('user/watchlist/movies').restful_params(options, [:username]).response
  end

  # documentation: http://trakt.tv/api-docs/user-watchlist-shows
  def watchlist_shows(options = {})
    optional_auth(options).get('user/watchlist/shows').restful_params(options, [:username]).response
  end
end
