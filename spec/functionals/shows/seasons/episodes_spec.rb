require 'spec_helper'

describe TraktApi::Shows::Seasons::Episodes do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.shows.seasons.episodes }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/shows/123/seasons/1/episodes/1') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/episode.json')]
      end
    end
  end

  describe '.find' do
    it 'should return Faraday::Response class' do
      expect(model.find(id: '123', season: 1, episode: 1)).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.find(id: '123', season: 1, episode: 1).body).to be_a(Hash)
    end
  end

  describe '.find_url' do
    it 'should return String class' do
      expect(model.find_url(id: '123', season: 1, episode: 1)).to eq('https://api-v2launch.trakt.tv/shows/123/seasons/1/episodes/1')
    end
  end
end
