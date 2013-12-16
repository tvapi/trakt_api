require 'httparty'
require 'string_to_sha1'

class TraktApi::Base
  include HTTParty
  base_uri 'http://api.trakt.tv//'

  def initialize(client)
    @client = client

    @auth = false
    @params = {}
  end

  def auth
    @auth = true

    self
  end

  def store_uri(uri)
    @uri = "#{uri}.json/#{api_key}"
  end

  def get(uri)
    store_uri(uri)
    @method = :get

    self
  end

  def post(uri)
    store_uri(uri)
    @method = :post

    self
  end

  def params(options)
    @params = options
    auth if options.delete(:auth)

    self
  end

  def restful_params(fields = [])
    restful_params_string = ''
    fields.each do |field|
      value = @params.delete(field)
      restful_params_string += "/#{value}" if value
    end
    @uri = "#{@uri}#{restful_params_string}"

    self
  end

  def response
    self.class.send(@method, @uri, request_options)
  end

  def request_options
    { body: @params }.merge(@auth ? auth_hash : {})
  end

  def auth_hash
    {
      basic_auth: {
        username: username,
        password: password.to_sha1
      }
    }
  end

  def series_uri(series_id)
    "#{api_key}/series/#{series_id}/"
  end

  def api_key
    @client.api_key
  end

  def username
    @client.username
  end

  def password
    @client.password
  end
end
