class TraktApi::Activity < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/activity-community
  def community(options = {})
    get('activity/community').params(options).restful_params(type_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-episodes
  def episodes(options = {})
    get('activity/episodes').params(options).restful_params(episodes_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-friends
  def friends(options = {})
    auth.post('activity/friends').params(options).restful_params(type_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-movies
  def movies(options = {})
    get('activity/movies').params(options).restful_params(title_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-seasons
  def seasons(options = {})
    get('activity/seasons').params(options).restful_params(seasons_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-shows
  def shows(options = {})
    get('activity/shows').params(options).restful_params(title_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user
  def user(options = {})
    get('activity/user').params(options).restful_params(user_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-episodes
  def user_episodes(options = {})
    get('activity/user/episodes').params(options).restful_params(user_episodes_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-movies
  def user_movies(options = {})
    get('activity/user/movies').params(options).restful_params(user_title_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-seasons
  def user_seasons(options = {})
    get('activity/user/seasons').params(options).restful_params(user_seasons_fields).response
  end

  # documentation: http://trakt.tv/api-docs/activity-user-shows
  def user_shows(options = {})
    get('activity/user/shows').params(options).restful_params(user_title_fields).response
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
