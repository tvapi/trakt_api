require 'spec_helper'

describe TraktApi::Search do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.search }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/search?query=batman&type=show') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/search.json')]
      end
    end
  end

  describe '.call' do
    it 'should return Faraday::Response class' do
      expect(model.call(query: 'batman', type: 'show')).to be_a(Faraday::Response)
    end

    it 'should return Array class for body reponse' do
      expect(model.call(query: 'batman', type: 'show').body).to be_a(Array)
    end
  end

  describe '.call_url' do
    it 'should return String class' do
      expect(model.call_url(query: 'batman', type: 'show')).to eq('https://api.trakt.tv/search?query=batman&type=show')
    end
  end
end
