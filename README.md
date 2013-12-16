[![Build Status](https://travis-ci.org/wafcio/trakt_api.png?branch=master)](https://travis-ci.org/wafcio/trakt_api)
[![Dependency Status](https://gemnasium.com/wafcio/trakt_api.png)](https://gemnasium.com/wafcio/trakt_api)
[![Code Climate](https://codeclimate.com/github/wafcio/trakt_api.png)](https://codeclimate.com/github/wafcio/trakt_api)
[![Coverage Status](https://coveralls.io/repos/wafcio/trakt_api/badge.png)](https://coveralls.io/r/wafcio/trakt_api)
[![Gem Version](https://badge.fury.io/rb/trakt_api.png)](http://badge.fury.io/rb/trakt_api)

# TraktApi

trakt_api is a simple ruby client for trakt.tv API.

## Getting started

You can add it to your Gemfile with:

```ruby
gem 'trakt_api'
```

Run the bundle command to install it.

After you install ThetvdbApi and add it to your Gemfile, you need to run the generator (if you use Ruby on Rails application):

```console
rails generate trakt_api:install
```

The generator will install an initializer where you must past your api_key, username and password (not sha1).

## How to use

There is one entry point, in initialize you can past hash with api_key, username and password (not sha1) values, or leave empty:

```ruby
client = TrakApi::Client.new(api_key: '...', username: '...', password: '...')
```

## Usage

For Authentication this gem use Basic Authentication, so you don't need pass username and password in each api call. If you want active authentication (if authentication is optional) in api call you must pass
```ruby
{ auth: true }
```
in options

Full documentation is available here: [http://trakt.tv/api-docs](http://trakt.tv/api-docs)


Account API

```ruby
client.account.create({...})
client.account.settings
client.account.test
```

Activity API

```ruby
client.activity.community({...})
client.activity.episodes({...})
client.activity.friends({...})
client.activity.movies({...})
client.activity.seasons({...})
client.activity.shows({...})
client.activity.user({...})
client.activity.user_episodes({...})
client.activity.user_movies({...})
client.activity.user_seasons({...})
client.activity.user_shows({...})
```

Calendar API

```ruby
client.calendar.premieres({...})
client.calendar.shows({...})
```

Comment API

```ruby
client.comment.episode({...})
client.comment.movie({...})
client.comment.show({...})
```

Genres API

```ruby
client.genres.movies({...})
client.genres.shows({...})
```

Lists API

```ruby
client.lists.add({...})
client.lists.delete({...})
client.lists.items_add({...})
client.lists.items_delete({...})
client.lists.update({...})
```

Movie API

```ruby
client.movie.cancel_check_in
client.movie.cancel_watching
client.movie.check_in({...})
client.movie.comments({...})
client.movie.scrobble({...})
client.movie.library({...})
client.movie.related({...})
client.movie.stats({...})
client.movie.summary({...})
client.movie.summaries({...})
client.movie.unseen({...})
client.movie.unwatch_list({...})
client.movie.watching({...})
client.movie.watching_now({...})
client.movie.watch_list({...})
```

Movies API

```ruby
client.movies.trending({...})
client.movies.updated({...})
```

Network API

```ruby
client.network.approve({...})
client.network.deny({...})
client.network.follow({...})
client.network.requests
client.network.unfollow({...})
```

Rate API

```ruby
client.rate.episode({...})
client.rate.episodes({...})
client.rate.movie({...})
client.rate.movies({...})
client.rate.show({...})
client.rate.shows({...})
```

Recommendations API

```ruby
client.recommendations.movies({...})
client.recommendations.movies_dismiss({...})
client.recommendations.shows({...})
client.recommendations.shows_dismiss({...})
```

Search API

```ruby
client.search.episodes({...})
client.search.movies({...})
client.search.people({...})
client.search.shows({...})
client.search.users({...})
```

Server API

```ruby
client.server.time
```

Show API

```ruby
 client.show.cancel_check_in
 client.show.cancel_watching
 client.show.check_in({...})
 client.show.comments({...})
 client.show.episode_comments({...})
 client.show.episode_library({...})
 client.show.episode_seen({...})
 client.show.episode_stats({...})
 client.show.episode_summary({...})
 client.show.episode_unlibrary({...})
 client.show.episode_unseen({...})
 client.show.episode_unwatch_list({...})
 client.show.episode_watching_now({...})
 client.show.episode_watch_list({...})
 client.show.library({...})
 client.show.related({...})
 client.show.scrobble({...})
 client.show.season({...})
 client.show.season_library({...})
 client.show.season_seen({...})
 client.show.seasons({...})
 client.show.seen({...})
 client.show.stats({...})
 client.show.summary({...})
 client.show.summaries({...})
 client.show.unlibrary({...})
 client.show.unwatch_list({...})
 client.show.watching({...})
 client.show.watching_now({...})
 client.show.watch_list({...})
```

Shows API

```ruby
client.shows.trending({...})
client.shows.updated({...})
```

User API

```ruby
client.user.calendar_shows({...})
client.user.last_activity({...})
client.user.library_movies_all({...})
client.user.library_movies_collection({...})
client.user.library_movies_watched({...})
client.user.library_shows_all({...})
client.user.library_shows_collection({...})
client.user.library_shows_watched({...})
client.user.list({...})
client.user.lists({...})
client.user.network_followers({...})
client.user.network_following({...})
client.user.network_friends({...})
client.user.profile({...})
client.user.progress_collected({...})
client.user.progress_watched({...})
client.user.ratings_episodes({...})
client.user.ratings_movies({...})
client.user.ratings_shows({...})
client.user.watching({...})
client.user.watch_list_episode({...})
client.user.watch_list_movies({...})
client.user.watch_list_shows({...})
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
