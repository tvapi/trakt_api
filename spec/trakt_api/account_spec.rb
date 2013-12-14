require 'spec_helper'

describe TraktApi::Account do
  let(:model) { TraktApi::Account.new(TraktApi::Client.new) }

  describe '.create' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("account/create.json/#{TraktApi::Configuration.api_key}", username: 'tester',
        password: 'qwerty', email: 'tester@gmail.com').and_return(double(response: true))

      model.create(username: 'tester', password: 'qwerty', email: 'tester@gmail.com')
    end
  end

  describe '.settings' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("account/settings.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.settings
    end
  end

  describe '.test' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("account/test.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.test
    end
  end
end
