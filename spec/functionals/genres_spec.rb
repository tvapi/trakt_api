require 'spec_helper'

describe TraktApi::Genres do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.genres }

  let(:data_genres) { File.read('spec/fixtures/genres.json') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/genres/movies.json/123456789') { [200, { content_type: 'json' }, data_genres] }
      stub.get('/genres/shows.json/123456789') { [200, { content_type: 'json' }, data_genres] }
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
      model.movies_url.should == 'http://api.trakt.tv/genres/movies.json/123456789'
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
      model.shows_url.should == 'http://api.trakt.tv/genres/shows.json/123456789'
    end
  end
end
