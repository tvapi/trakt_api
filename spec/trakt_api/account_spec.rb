require 'spec_helper'

describe TraktApi::Account do
  let(:model) { TraktApi::Account.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  before do
    model.instance_variable_set("@uri", '/')
  end

  describe '.create' do
    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('account/create').and_return(mock_model)

      model.create(username: 'tester', password: 'qwerty', email: 'tester@gmail.com')
    end

    it 'should call params wih specific hash' do
      model.should_receive(:params).with(username: 'tester', password: 'qwerty', email: 'tester@gmail.com').
        and_return(mock_model)

      model.create(username: 'tester', password: 'qwerty', email: 'tester@gmail.com')
    end
  end

  describe '.settings' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.settings
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('account/settings').and_return(mock_model)

      model.settings
    end
  end

  describe '.test' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.test
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('account/test').and_return(mock_model)

      model.test
    end
  end
end
