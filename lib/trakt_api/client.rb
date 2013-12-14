class TraktApi::Client
  attr_reader :api_key, :username, :password

  def initialize(options = {})
    [:api_key, :api_url, :username, :password]. each do |key|
      value = options[key] ? options[key] : TraktApi::Configuration.send(key)
      instance_variable_set("@#{key}", value)
    end
  end

  def account
    @account ||= TraktApi::Account.new(self)
  end

  def activity
    @activity ||= TraktApi::Activity.new(self)
  end

  def calendar
    @calendar ||= TraktApi::Calendar.new(self)
  end

  def comment
    @comment ||= TraktApi::Comment.new(self)
  end

  def genres
    @genres ||= TraktApi::Genres.new(self)
  end

  def lists
    @lists ||= TraktApi::Lists.new(self)
  end

  def movie
    @movie ||= TraktApi::Movie.new(self)
  end

  def movies
    @movies ||= TraktApi::Movies.new(self)
  end

  def network
    @network ||= TraktApi::Network.new(self)
  end

  def rate
    @rate ||= TraktApi::Rate.new(self)
  end

  def recommendations
    @recommendations ||= TraktApi::Recommendations.new(self)
  end

  def search
    @search ||= TraktApi::Search.new(self)
  end

  def server
    @server ||= TraktApi::Server.new(self)
  end

  def shows
    @shows ||= TraktApi::Shows.new(self)
  end
end
