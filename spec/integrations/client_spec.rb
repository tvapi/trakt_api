require 'integration_spec_helper'

describe TraktApi::Client do
  let(:client) { TraktApi::Client.new }

  describe 'real request' do
    describe '.server' do
      describe '.time' do
        it 'should return response class' do
          client.server.time.class.should == HTTParty::Response
        end
      end
    end
  end
end