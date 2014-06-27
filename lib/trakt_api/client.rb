class TraktApi::Client
  attr_reader :options

  def initialize(options = {})
    @options = options

    @options[:adapter] ||= :net_http
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

  def show
    @server ||= TraktApi::Show.new(self)
  end

  def shows
    @shows ||= TraktApi::Shows.new(self)
  end

  def user
    @user ||= TraktApi::User.new(self)
  end
end
