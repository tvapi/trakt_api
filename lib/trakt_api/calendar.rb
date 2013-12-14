class TraktApi::Calendar < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/calendar-premieres
  def premieres(options = {})
    optional_auth(options).get(prepare_uri('calendar/premieres.json', options, [:date, :days])).response
  end

  # documentation: http://trakt.tv/api-docs/calendar-shows
  def shows(options = {})
    optional_auth(options).get(prepare_uri('calendar/shows.json', options, [:date, :days])).response
  end
end
