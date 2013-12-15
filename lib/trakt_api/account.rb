class TraktApi::Account < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/account-create
  def create(options = {})
    post('account/create').params(options).response
  end

  # documentation: http://trakt.tv/api-docs/account-settings
  def settings
    auth.post('account/settings').response
  end

  # documentation: http://trakt.tv/api-docs/account-test
  def test
    auth.post('account/test').response
  end
end
