class TraktApi::Client
  attr_reader :config

  def initialize(config = {})
    @config = config

    @config[:adapter] ||= :net_http
  end
end
