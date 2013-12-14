require 'spec_helper'

describe TraktApi::Activity do
  let(:model) { TraktApi::Activity.new(TraktApi::Client.new) }

  describe '.community' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/community.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.community
    end
  end

  describe '.episodes' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/episodes.json/#{TraktApi::Configuration.api_key}/test/1/2").
        and_return(double(response: true))

      model.episodes(title: 'test', season: 1, episode: 2)
    end
  end

  describe '.friends' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("activity/friends.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.friends
    end
  end

  describe '.movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/movies.json/#{TraktApi::Configuration.api_key}/test").
        and_return(double(response: true))

      model.movies(title: 'test')
    end
  end

  describe '.seasons' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/seasons.json/#{TraktApi::Configuration.api_key}/test/1").
        and_return(double(response: true))

      model.seasons(title: 'test', season: 1)
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/shows.json/#{TraktApi::Configuration.api_key}/test").
        and_return(double(response: true))

      model.shows(title: 'test')
    end
  end

  describe '.user' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("activity/user.json/#{TraktApi::Configuration.api_key}/test").
        and_return(double(response: true))

      model.user(username: 'test')
    end
  end

  describe '.user_episodes' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).
        with("activity/user/episodes.json/#{TraktApi::Configuration.api_key}/justin/test/1/2").
        and_return(double(response: true))

      model.user_episodes(username: 'justin', title: 'test', season: 1, episode: 2)
    end
  end

  describe '.user_movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).
        with("activity/user/movies.json/#{TraktApi::Configuration.api_key}/justin/test").
        and_return(double(response: true))

      model.user_movies(username: 'justin', title: 'test')
    end
  end

  describe '.user_seasons' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).
        with("activity/user/seasons.json/#{TraktApi::Configuration.api_key}/justin/test/1").
        and_return(double(response: true))

      model.user_seasons(username: 'justin', title: 'test', season: 1)
    end
  end

  describe '.user_shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).
        with("activity/user/shows.json/#{TraktApi::Configuration.api_key}/justin/test").
        and_return(double(response: true))

      model.user_shows(username: 'justin', title: 'test')
    end
  end

  describe '.prepare_uri' do
    it 'should return correct string without start_ts and end_ts' do
      model.prepare_uri('URI', {}, []).should == "URI/#{TraktApi::Configuration.api_key}"
    end

    it 'should return correct string with start_ts and without end_ts' do
      model.prepare_uri('URI', { start_ts: 1 }, [:start_ts]).should == "URI/#{TraktApi::Configuration.api_key}/1"
    end

    it 'should return correct string with start_ts and end_ts' do
      model.prepare_uri('URI', { start_ts: 1, end_ts: 2 }, [:start_ts, :end_ts]).
        should == "URI/#{TraktApi::Configuration.api_key}/1/2"
    end
  end
end
