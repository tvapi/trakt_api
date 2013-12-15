class TraktApi::Network < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/network-approve
  def approve(options = {})
    auth.post('network/approve').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/network-deny
  def deny(options = {})
    auth.post('network/deny').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/network-follow
  def follow(options = {})
    auth.post('network/follow').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/network-requests
  def requests
    auth.post('network/requests').response
  end

  # documentation: http://trakt.tv/api-docs/network-unfollow
  def unfollow(options = {})
    auth.post('network/unfollow').params(options).response
  end
end
