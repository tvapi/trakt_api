require 'spec_helper'

describe TraktApi::Network do
  let(:model) { TraktApi::Network.new(TraktApi::Client.new) }

  describe '.approve' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("network/approve.json/#{TraktApi::Configuration.api_key}", user: 'justin',
        follow_back: true).and_return(double(response: true))

      model.approve(user: 'justin', follow_back: true)
    end
  end

  describe '.deny' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("network/deny.json/#{TraktApi::Configuration.api_key}", user: 'justin').
        and_return(double(response: true))

      model.deny(user: 'justin')
    end
  end

  describe '.follow' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("network/follow.json/#{TraktApi::Configuration.api_key}", user: 'justin').
        and_return(double(response: true))

      model.follow(user: 'justin')
    end
  end

  describe '.requests' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("network/requests.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.requests
    end
  end

  describe '.unfollow' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("network/unfollow.json/#{TraktApi::Configuration.api_key}", user: 'justin').
        and_return(double(response: true))

      model.unfollow(user: 'justin')
    end
  end
end
