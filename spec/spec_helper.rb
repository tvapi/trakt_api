require 'rubygems'
require 'bundler/setup'
require 'coveralls'
Coveralls.wear!

require 'trakt_api'

class SampleModel
  def auth
    self
  end

  def optional_auth(options = {})
    self
  end

  def get(uri)
    self
  end

  def post(uri)
    self
  end

  def params(options = {}, fields = [])
    self
  end

  def restful_params(options = {}, fields = [])
    self
  end

  def response
  end
end

RSpec.configure do |config|
end
