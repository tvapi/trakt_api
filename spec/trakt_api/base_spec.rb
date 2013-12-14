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

  describe '.optionl_auth' do
    it 'should call auth' do
      model.should_receive(:auth)

      model.optional_auth(auth: true)
    end
  end

  describe '.store_uri_and_options' do
    it 'should set uri' do
      model.store_uri_and_options('http://example.com', {})

      model.uri.should == 'http://example.com'
    end

    it 'should set options' do
      model.store_uri_and_options('http://example.com', { sample: true })

      model.options.should == { sample: true }
    end
  end

  describe '.get' do
    it 'should call store_uri_and_options' do
      model.should_receive(:store_uri_and_options)

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
    it 'should call store_uri_and_options' do
      model.should_receive(:store_uri_and_options)

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

  describe '.query_params' do
    it 'should return correct string' do
      model.query_params({ sample: 'test', sample2: 'test2' }, [:sample]).should == '?sample=test'
    end

    it 'should return correct string other case' do
      model.query_params({}, []).should == ''
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
