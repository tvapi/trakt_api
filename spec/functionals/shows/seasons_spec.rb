require 'spec_helper'

describe TraktApi::Shows::Seasons do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.shows.seasons }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/shows/123/seasons') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/seasons.json')]
      end
      stub.get('/shows/123/seasons/1') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/episodes.json')]
      end
    end
  end

  describe '.all' do
    it 'should return Faraday::Response class' do
      expect(model.all(id: '123')).to be_a(Faraday::Response)
    end

    it 'should return Array class for body reponse' do
      expect(model.all(id: '123').body).to be_a(Array)
    end
  end

  describe '.all_url' do
    it 'should return String class' do
      expect(model.all_url(id: '123')).to eq('https://api.trakt.tv/shows/123/seasons')
    end
  end

  describe '.find' do
    it 'should return Faraday::Response class' do
      expect(model.find(id: '123', season: 1)).to be_a(Faraday::Response)
    end

    it 'should return Array class for body reponse' do
      expect(model.find(id: '123', season: 1).body).to be_a(Array)
    end
  end

  describe '.all_url' do
    it 'should return String class' do
      expect(model.find_url(id: '123', season: 1)).to eq('https://api.trakt.tv/shows/123/seasons/1')
    end
  end

  describe '.seasons' do
    it 'should return TraktApi::Shows::Seasons::Episodes class' do
      expect(model.episodes).to be_a(TraktApi::Shows::Seasons::Episodes)
    end
  end
end
