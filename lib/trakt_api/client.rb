class TraktApi::Client
  attr_reader :api_key, :username, :password

  def initialize(options = {})
    [:api_key, :api_url, :username, :password]. each do |key|
      value = options[key] ? options[key] : TraktApi::Configuration.send(key)
      instance_variable_set("@#{key}", value)
    end
  end

  def calendar
    @calendar ||= TraktApi::Calendar.new(self)
  end

  def genres
    @calendar ||= TraktApi::Genres.new(self)
  end

  def server
    @server ||= TraktApi::Server.new(self)
  end
end
