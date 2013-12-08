require 'rubygems'
require 'bundler/setup'
require 'coveralls'
Coveralls.wear!

require 'trakt_api'

TraktApi::Configuration.configure do |config|
  config.username = 'tester'
  config.password = 'qwerty'
end

RSpec.configure do |config|
end
