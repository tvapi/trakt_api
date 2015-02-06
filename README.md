[![Build Status](https://travis-ci.org/tvapi/trakt_api.png?branch=master)](https://travis-ci.org/tvapi/trakt_api)
[![Dependency Status](https://gemnasium.com/tvapi/trakt_api.png)](https://gemnasium.com/tvapi/trakt_api)
[![Code Climate](https://codeclimate.com/github/tvapi/trakt_api.png)](https://codeclimate.com/github/tvapi/trakt_api)
[![Coverage Status](https://coveralls.io/repos/tvapi/trakt_api/badge.png)](https://coveralls.io/r/tvapi/trakt_api)
[![Gem Version](https://badge.fury.io/rb/trakt_api.png)](http://badge.fury.io/rb/trakt_api)

# TraktApi

trakt_api is a simple ruby client for trakt.tv API.

## Installation

With Bundler:

```ruby
gem 'trakt_api'
```

```ruby
$ bundle install
```

Otherwhise:

```ruby
gem install trakt_api
```
## How to use

You have two way for access to api:

* I case (create client class, one entry point)

Language attribute is optional with default value 'en'

```ruby
client = TraktApi::Client.new(api_key: '...')
client.search # => #<TraktApi::Search>
client.show # => #<TraktApi::Show>
```

* II case (direct access to api class, many entry points)

Language attribute is required

```ruby
ThetvdbApi::Search.new(api_key: '...').call({...})
```

## Methods

Full documentation is available here: [http://docs.trakt.apiary.io](http://docs.trakt.apiary.io)

### Search methods

* call
* call_url

### Show methods

* find
* find_url
* seasons
* seasons.all
* seasons.all_url
* seasons.episodes
* seasons.episodes.find
* seasons.episodes.find_url

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
