class TraktApi::Calendar < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/calendar-premieres
  def premieres(options = {})
    optional_auth(options).get("calendar/premieres.json#{share_uri_suffix(options)}").response
  end

  # documentation: http://trakt.tv/api-docs/calendar-shows
  def shows(options = {})
    optional_auth(options).get("calendar/shows.json#{share_uri_suffix(options)}").response
  end

  def share_uri_suffix(options)
    "/#{api_key}#{append_date(options)}"
  end

  def append_date(options)
    date(options) ? "/#{date(options)}#{append_days(options)}" : ''
  end

  def append_days(options)
    options[:days] ? "/#{options[:days]}" : ''
  end

  def date(options)
    @date ||= options[:date] && options[:date].is_a?(Date) ? options[:date].strftime("%Y%m%d") : options[:date]
  end
end
