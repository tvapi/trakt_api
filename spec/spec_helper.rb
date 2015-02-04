require 'coveralls'
Coveralls.wear!

require 'awesome_print'
require 'trakt_api'

Dir['spec/support/**/*.rb'].each { |f| require "./#{f}" }
