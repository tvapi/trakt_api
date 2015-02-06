class TraktApi::Client
  attr_reader :config

  def initialize(config = {})
    @config = config

    @config[:adapter] ||= :net_http
  end

  def search
    @search ||= TraktApi::Search.new(config)
  end

  def shows
    @search ||= TraktApi::Shows.new(config)
  end
end
