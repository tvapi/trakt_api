require 'spec_helper'

describe TraktApi::Search do
  let(:model) { TraktApi::Search.new(TraktApi::Client.new) }

  describe '.episodes' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("search/episodes.json/#{TraktApi::Configuration.api_key}?query=test").
        and_return(double(response: true))

      model.episodes(query: 'test')
    end
  end

  describe '.movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("search/movies.json/#{TraktApi::Configuration.api_key}?query=test").
        and_return(double(response: true))

      model.movies(query: 'test')
    end
  end

  describe '.people' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("search/people.json/#{TraktApi::Configuration.api_key}?query=test").
        and_return(double(response: true))

      model.people(query: 'test')
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).
        with("search/shows.json/#{TraktApi::Configuration.api_key}?query=test").
        and_return(double(response: true))

      model.shows(query: 'test')
    end
  end

  describe '.users' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("search/users.json/#{TraktApi::Configuration.api_key}?query=test").
        and_return(double(response: true))

      model.users(query: 'test')
    end
  end
end
