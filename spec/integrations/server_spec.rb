require 'integration_spec_helper'

describe TraktApi::Server do
  let(:model) { TraktApi::Server.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.time' do
      it 'should return response class' do
        model.time.class.should == HTTParty::Response
      end
    end
  end
end
