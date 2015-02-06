require 'spec_helper'

describe TraktApi::Shows do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.shows }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/shows/123') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/show.json')]
      end
    end
  end

  describe '.find' do
    it 'should return Faraday::Response class' do
      expect(model.find(id: '123')).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.find(id: '123').body).to be_a(Hash)
    end
  end

  describe '.find_url' do
    it 'should return String class' do
      expect(model.find_url(id: '123')).to eq('https://api.trakt.tv/shows/123')
    end
  end

  describe '.seasons' do
    it 'should return TraktApi::Shows::Seasons class' do
      expect(model.seasons).to be_a(TraktApi::Shows::Seasons)
    end
  end
end
