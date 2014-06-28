require 'spec_helper'

describe TraktApi::Server do
  let(:client) { TraktApi::Client.new(api_key: '123456789', adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.server }

  let(:data_server_time) { File.read('spec/fixtures/server_time.json') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/server/time.json/123456789') { [200, { content_type: 'json' }, data_server_time] }
    end
  end

  describe '.time' do
    it 'should return Faraday::Response class' do
      model.time.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.time.body == Hash
    end
  end

  describe '.time_url' do
    it 'should return correct url' do
      model.time_url.should == 'http://api.trakt.tv/server/time.json/123456789'
    end
  end
end
