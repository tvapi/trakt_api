class TraktApi::Account < TraktApi::Base
  # documentation: http://trakt.tv/api-docs/account-create
  def create(options = {})
    post("account/create.json/#{api_key}", options).response
  end

  # documentation: http://trakt.tv/api-docs/account-settings
  def settings
    auth.post("account/settings.json/#{api_key}").response
  end

  # documentation: http://trakt.tv/api-docs/account-test
  def test
    auth.post("account/test.json/#{api_key}").response
  end
end
