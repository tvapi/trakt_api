require 'spec_helper'

describe TraktApi::Activity do
  let(:model) { TraktApi::Activity.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.community' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/community').and_return(mock_model)

      model.community
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.community
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.community
    end
  end

  describe '.episodes' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/episodes').and_return(mock_model)

      model.episodes(title: 'test', season: 1, episode: 2)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episodes(title: 'test', season: 1, episode: 2)
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.episodes(title: 'test', season: 1, episode: 2)
    end
  end

  describe '.friends' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.friends
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('activity/friends').and_return(mock_model)

      model.friends
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.friends
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.friends
    end
  end

  describe '.movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/movies').and_return(mock_model)

      model.movies(title: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movies(title: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.movies(title: 'test')
    end
  end

  describe '.seasons' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/seasons').and_return(mock_model)

      model.seasons(title: 'test', season: 1)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.seasons(title: 'test', season: 1)
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.seasons(title: 'test', season: 1)
    end
  end

  describe '.shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/shows').and_return(mock_model)

      model.shows(title: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows(title: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.shows(title: 'test')
    end
  end

  describe '.user' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/user').and_return(mock_model)

      model.user(username: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.user(username: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.user(username: 'test')
    end
  end

  describe '.user_episodes' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/user/episodes').and_return(mock_model)

      model.user_episodes(username: 'justin', title: 'test', season: 1, episode: 2)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.user_episodes(username: 'justin', title: 'test', season: 1, episode: 2)
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.user_episodes(username: 'justin', title: 'test', season: 1, episode: 2)
    end
  end

  describe '.user_movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/user/movies').and_return(mock_model)

      model.user_movies(username: 'justin', title: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.user_movies(username: 'justin', title: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.user_movies(username: 'justin', title: 'test')
    end
  end

  describe '.user_seasons' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/user/seasons').and_return(mock_model)

      model.user_seasons(username: 'justin', title: 'test', season: 1)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.user_seasons(username: 'justin', title: 'test', season: 1)
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.user_seasons(username: 'justin', title: 'test', season: 1)
    end
  end

  describe '.user_shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('activity/user/shows').and_return(mock_model)

      model.user_shows(username: 'justin', title: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.user_shows(username: 'justin', title: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.user_shows(username: 'justin', title: 'test')
    end
  end
end
