require 'integration_spec_helper'

describe TraktApi::Network do
  let(:model) { TraktApi::Network.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.approve' do
      it 'should return response class' do
        model.approve(user: 'justin').class.should == HTTParty::Response
      end
    end

    describe '.deny' do
      it 'should return response class' do
        model.deny(user: 'justin').class.should == HTTParty::Response
      end
    end

    describe '.follow' do
      it 'should return response class' do
        model.follow(user: 'justin').class.should == HTTParty::Response
      end
    end

    describe '.requests' do
      it 'should return response class' do
        model.requests.class.should == HTTParty::Response
      end
    end

    describe '.unfollow' do
      it 'should return response class' do
        model.unfollow(user: 'justin').class.should == HTTParty::Response
      end
    end
  end
end
