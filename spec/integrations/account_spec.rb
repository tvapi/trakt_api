require 'integration_spec_helper'

describe TraktApi::Account do
  let(:model) { TraktApi::Account.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.settings' do
      it 'should return response class' do
        model.settings.class.should == HTTParty::Response
      end
    end

    describe '.test' do
      it 'should return response class' do
        model.test.class.should == HTTParty::Response
      end
    end
  end
end
