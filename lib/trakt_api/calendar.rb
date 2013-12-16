class TraktApi::Calendar < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/calendar-premieres
  def premieres(options = {})
    get('calendar/premieres').params(options).restful_params(fields).response
  end

  # documentation: http://trakt.tv/api-docs/calendar-shows
  def shows(options = {})
    get('calendar/shows').params(options).restful_params(fields).response
  end

  private

  def fields
    [:date, :days]
  end
end
