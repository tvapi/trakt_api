class TraktApi::Activity < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/activity-community
  def community(options = {})
    optional_auth(options).get('activity/community').restful_params(options, type_fields).
      params(query_params(options, type_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-episodes
  def episodes(options = {})
    optional_auth(options).get('activity/episodes').restful_params(options, episodes_fields).
      params(query_params(options, episodes_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-friends
  def friends(options = {})
    auth.post('activity/friends').restful_params(options, type_fields).params(query_params(options, type_fields)).
      response
  end

  # documentation: http://trakt.tv/api-docs/activity-movies
  def movies(options = {})
    optional_auth(options).get('activity/movies').restful_params(options, title_fields).
      params(query_params(options, title_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-seasons
  def seasons(options = {})
    optional_auth(options).get('activity/seasons').restful_params(options, seasons_fields).
      params(query_params(options, seasons_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-shows
  def shows(options = {})
    optional_auth(options).get('activity/shows').restful_params(options, title_fields).
      params(query_params(options, title_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user
  def user(options = {})
    optional_auth(options).get('activity/user').restful_params(options, user_fields).
      params(query_params(options, user_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-episodes
  def user_episodes(options = {})
    optional_auth(options).get('activity/user/episodes').restful_params(options, user_episodes_fields).
      params(query_params(options, user_episodes_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-movies
  def user_movies(options = {})
    optional_auth(options).get('activity/user/movies').restful_params(options, user_title_fields).
      params(query_params(options, user_title_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-seasons
  def user_seasons(options = {})
    optional_auth(options).get('activity/user/seasons').restful_params(options, user_seasons_fields).
      params(query_params(options, user_seasons_fields)).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-shows
  def user_shows(options = {})
    optional_auth(options).get('activity/user/shows').restful_params(options, user_title_fields).
      params(query_params(options, user_title_fields)).response
  end

  def query_params(options, fields)
    options.reject{ |option| fields.include?(option) }
  end

  private

  def period_fields
    [:start_ts, :end_ts]
  end

  def type_fields
    [:types, :action] + period_fields
  end

  def episodes_fields
    [:title, :season, :episode, :action] + period_fields
  end

  def title_fields
    [:title, :action] + period_fields
  end

  def seasons_fields
    [:title, :season, :action] + period_fields
  end

  def user_fields
    [:username] + type_fields
  end

  def user_episodes_fields
    [:username] + episodes_fields
  end

  def user_title_fields
    [:username] + title_fields
  end

  def user_seasons_fields
    [:username] + seasons_fields
  end
end
