require 'spec_helper'

describe TraktApi::Network do
  let(:model) { TraktApi::Network.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.approve' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.approve(user: 'justin', follow_back: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('network/approve').and_return(mock_model)

      model.approve(user: 'justin', follow_back: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.approve(user: 'justin', follow_back: true)
    end
  end

  describe '.deny' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.deny(user: 'justin')
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('network/deny').and_return(mock_model)

      model.deny(user: 'justin')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.deny(user: 'justin')
    end
  end

  describe '.follow' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.follow(user: 'justin')
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('network/follow').and_return(mock_model)

      model.follow(user: 'justin')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.follow(user: 'justin')
    end
  end

  describe '.requests' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.requests
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('network/requests').and_return(mock_model)

      model.requests
    end
  end

  describe '.unfollow' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unfollow(user: 'justin')
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('network/unfollow').and_return(mock_model)

      model.unfollow(user: 'justin')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unfollow(user: 'justin')
    end
  end
end
