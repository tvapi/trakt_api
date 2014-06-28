require 'spec_helper'

describe TraktApi::Search do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.search }

  let(:data_episodes) { File.read('spec/fixtures/search_episodes.json') }
  let(:data_movies) { File.read('spec/fixtures/search_movies.json') }
  let(:data_people) { File.read('spec/fixtures/search_people.json') }
  let(:data_shows) { File.read('spec/fixtures/search_shows.json') }
  let(:data_users) { File.read('spec/fixtures/search_users.json') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/search/episodes.json/123456789') { [200, { content_type: 'json' }, data_episodes] }
      stub.get('/search/movies.json/123456789') { [200, { content_type: 'json' }, data_movies] }
      stub.get('/search/people.json/123456789') { [200, { content_type: 'json' }, data_people] }
      stub.get('/search/shows.json/123456789') { [200, { content_type: 'json' }, data_shows] }
      stub.get('/search/users.json/123456789') { [200, { content_type: 'json' }, data_users] }
    end
  end

  describe '.episodes' do
    it 'should return Faraday::Response class' do
      model.episodes.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.episodes.body == Hash
    end
  end

  describe '.episodes_url' do
    it 'should return correct url' do
      model.episodes_url.should == 'http://api.trakt.tv/search/episodes.json/123456789'
    end
  end

  describe '.movies' do
    it 'should return Faraday::Response class' do
      model.movies.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.movies.body == Hash
    end
  end

  describe '.movies_url' do
    it 'should return correct url' do
      model.movies_url.should == 'http://api.trakt.tv/search/movies.json/123456789'
    end
  end

  describe '.people' do
    it 'should return Faraday::Response class' do
      model.people.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.people.body == Hash
    end
  end

  describe '.people_url' do
    it 'should return correct url' do
      model.people_url.should == 'http://api.trakt.tv/search/people.json/123456789'
    end
  end

  describe '.shows' do
    it 'should return Faraday::Response class' do
      model.shows.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.shows.body == Hash
    end
  end

  describe '.shows_url' do
    it 'should return correct url' do
      model.shows_url.should == 'http://api.trakt.tv/search/shows.json/123456789'
    end
  end

  describe '.users' do
    it 'should return Faraday::Response class' do
      model.users.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.users.body == Hash
    end
  end

  describe '.users_url' do
    it 'should return correct url' do
      model.users_url.should == 'http://api.trakt.tv/search/users.json/123456789'
    end
  end
end
