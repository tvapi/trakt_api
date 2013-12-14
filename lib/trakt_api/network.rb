class TraktApi::Network < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/network-approve
  def approve(options = {})
    auth.post("network/approve.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/network-deny
  def deny(options = {})
    auth.post("network/deny.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/network-follow
  def follow(options = {})
    auth.post("network/follow.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/network-requests
  def requests
    auth.post("network/requests.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/network-unfollow
  def unfollow(options = {})
    auth.post("network/unfollow.json/#{api_key}", options).response
  end
end
