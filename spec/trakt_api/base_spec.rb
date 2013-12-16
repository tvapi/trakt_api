require 'spec_helper'

class ExampleClass < TraktApi::Base
end

describe TraktApi::Base do
  let(:klass) { ExampleClass }
  let(:model) { klass.new(TraktApi::Client.new) }

  describe '.auth' do
    it 'should set auth' do
      model.auth

      model.instance_variable_get('@auth').should == true
    end
  end

  describe '.store_uri' do
    it 'should set uri' do
      model.stub(:api_key).and_return('API_KEY')
      model.store_uri('http://example.com')

      model.instance_variable_get('@uri').should == 'http://example.com.json/API_KEY'
    end
  end

  describe '.get' do
    it 'should call store_uri' do
      model.should_receive(:store_uri)

      model.get('http://example.com')
    end

    it 'should set @method to get' do
      model.get('http://example.com')

      model.instance_variable_get('@method').should == :get
    end

    it 'should return self' do
      model.get('http://example.com').should == model
    end
  end

  describe '.post' do
    it 'should call store_uri' do
      model.should_receive(:store_uri)

      model.post('http://example.com')
    end

    it 'should set @method to post' do
      model.post('http://example.com')

      model.instance_variable_get('@method').should == :post
    end

    it 'should return self' do
      model.post('http://example.com').should == model
    end
  end

  describe '.params' do
    it 'should set @params' do
      model.params(sample: true, auth: true)

      model.instance_variable_get('@params').should == { sample: true }
    end
  end

  describe '.restful_params' do
    it 'should return correct uri' do
      model.instance_variable_set('@uri', 'URI')
      model.instance_variable_set('@params', { sample: 'test' })

      model.restful_params([:sample])

      model.instance_variable_get('@uri').should == 'URI/test'
    end
  end

  describe '.response' do
    it 'should call get klass method' do
      model.instance_variable_set('@method', :get)
      klass.should_receive(:get)

      model.response
    end
  end

  describe '.request_options' do
    it 'should return correct keys' do
      model.request_options.keys.sort.should == [:body].sort
    end
  end

  describe '.auth_hash' do
    it 'should return correct hash' do
      model = klass.new(TraktApi::Client.new(username: 'tester', password: 'qwerty'))

      model.auth_hash.should == { basic_auth: { username: model.username, password: model.password.to_sha1 } }
    end
  end

  describe '.series_uri' do
    it 'should use default api_key' do
      klass.new(TraktApi::Client.new(api_key: 'API_KEY')).series_uri('1234').should == 'API_KEY/series/1234/'
    end
  end

  describe '.api_key' do
    it 'should use default api_key' do
      klass.new(TraktApi::Client.new).api_key.should == TraktApi::Configuration.api_key
    end

    it 'should set api_key' do
      klass.new(TraktApi::Client.new(api_key: 'API_KEY')).api_key.should == 'API_KEY'
    end
  end

  describe '.username' do
    it 'should use default username' do
      klass.new(TraktApi::Client.new).username.should == TraktApi::Configuration.username
    end

    it 'should set username' do
      klass.new(TraktApi::Client.new(username: 'USERNAME')).username.should == 'USERNAME'
    end
  end

  describe '.password' do
    it 'should use default password' do
      klass.new(TraktApi::Client.new).password.should == TraktApi::Configuration.password
    end

    it 'should set username' do
      klass.new(TraktApi::Client.new(password: 'PASSWORD')).password.should == 'PASSWORD'
    end
  end
end
