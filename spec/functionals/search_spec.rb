require 'spec_helper'

describe TraktApi::Search do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/search?query=batman&type=show') do
        [200, { content_type: 'json' }, File.read('spec/fixtures/search.json')]
      end
    end
  end

  describe '.search' do
    it 'should return Faraday::Response class' do
      expect(client.search(query: 'batman', type: 'show')).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(client.search(query: 'batman', type: 'show').body).to be_a(Array)
    end
  end
end