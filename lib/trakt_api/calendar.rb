class TraktApi::Calendar < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/calendar-premieres
  def premieres(options = {})
    optional_auth(options).get('calendar/premieres').restful_params(options, fields).response
  end

  # documentation: http://trakt.tv/api-docs/calendar-shows
  def shows(options = {})
    optional_auth(options).get('calendar/shows').restful_params(options, fields).response
  end

  private

  def fields
    [:date, :days]
  end
end
