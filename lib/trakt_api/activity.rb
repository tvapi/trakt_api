class TraktApi::Activity < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/activity-community
  def community(options = {})
    optional_auth(options).get(prepare_uri("activity/community.json", options, [:types, :action, :start_ts, :end_ts]),
      query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-episodes
  def episodes(options = {})
    optional_auth(options).get(prepare_uri("activity/episodes.json", options, [:title, :season, :episode, :action,
      :start_ts, :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-friends
  def friends(options = {})
    auth.post(prepare_uri("activity/friends.json", options, [:types, :action, :start_ts, :end_ts]),
      query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-movies
  def movies(options = {})
    optional_auth(options).get(prepare_uri("activity/movies.json", options, [:title, :action, :start_ts, :end_ts]),
      query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-seasons
  def seasons(options = {})
    optional_auth(options).get(prepare_uri("activity/seasons.json", options, [:title, :season, :action, :start_ts,
      :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-shows
  def shows(options = {})
    optional_auth(options).get(prepare_uri("activity/shows.json", options, [:title, :action, :start_ts, :end_ts]),
      query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user
  def user(options = {})
    optional_auth(options).get(prepare_uri("activity/user.json", options, [:username, :types, :action, :start_ts,
      :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-episodes
  def user_episodes(options = {})
    optional_auth(options).get(prepare_uri("activity/user/episodes.json", options, [:username, :title, :season,
      :episode, :action, :start_ts, :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-movies
  def user_movies(options = {})
    optional_auth(options).get(prepare_uri("activity/user/movies.json", options, [:username, :title, :action, :start_ts,
      :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-seasons
  def user_seasons(options = {})
    optional_auth(options).get(prepare_uri("activity/user/seasons.json", options, [:username, :title, :season, :action,
      :start_ts, :end_ts]), query_params(options)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-shows
  def user_shows(options = {})
    optional_auth(options).get(prepare_uri("activity/user/shows.json", options, [:username, :title, :action, :start_ts,
      :end_ts]), query_params(options)).response
  end

  def query_params(options)
    options.select{ |option| [:min, :images].include?(option) }
  end
end
