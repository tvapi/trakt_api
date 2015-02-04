require 'service_api'
require 'string_to_sha1'

class TraktApi::Base
  include ServiceApi::BaseFaraday

  %w[get post put delete].each do |method|
    define_method method do
      connection.headers = headers
      connection.send(method, uri, query_params)
    end
  end

  def params(options)
    @token = options.delete(:token)

    super
  end

  private

  def headers
    headers = {
      'Content-Type' => 'application/json',
      'trakt-api-key' => @config[:api_key],
      'trakt-api-version' => '2'
    }

    @token ? headers.merge('Authorization' => "Bearer #{@token}") : headers
  end

  def connection
    @connection ||= Faraday.new(url: base_url, ssl: { verify: false }) do |builder|
      builder.request :json
      builder.response :json, content_type: /\bjson$/

      if @config[:adapter] == :test
        builder.adapter @config[:adapter], @config[:adapter_options]
      else
        builder.adapter @config[:adapter] || :net_http
      end
    end
  end

  def uri_kind
    :colon
  end

  def base_url
    if @config[:sandbox]
      'https://api.staging.trakt.tv'
    else
      'https://api.trakt.tv'
    end
  end
end
