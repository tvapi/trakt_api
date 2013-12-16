require 'spec_helper'

describe TraktApi::User do
  let(:model) { TraktApi::User.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.calendar_shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/calendar/shows').and_return(mock_model)

      model.calendar_shows
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.calendar_shows
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.calendar_shows
    end
  end

  describe '.last_activity' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/lastactivity').and_return(mock_model)

      model.last_activity
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.last_activity
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.last_activity
    end
  end

  describe '.library_movies_all' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/movies/all').and_return(mock_model)

      model.library_movies_all
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_movies_all
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_all
    end
  end

  describe '.library_movies_collection' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/movies/collection').and_return(mock_model)

      model.library_movies_collection
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_movies_collection
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_all
    end
  end

  describe '.library_movies_watched' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/movies/watched').and_return(mock_model)

      model.library_movies_watched
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_movies_watched
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_all
    end
  end

  describe '.library_shows_all' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/shows/all').and_return(mock_model)

      model.library_shows_all
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_shows_all
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_all
    end
  end

  describe '.library_shows_collection' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/shows/collection').and_return(mock_model)

      model.library_shows_collection
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_shows_collection
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_collection
    end
  end

  describe '.library_shows_watched' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/library/shows/watched').and_return(mock_model)

      model.library_shows_watched
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library_shows_watched
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.library_movies_watched
    end
  end

  describe '.list' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/list').and_return(mock_model)

      model.list
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.list
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.list
    end
  end

  describe '.lists' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/lists').and_return(mock_model)

      model.lists
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.lists
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.lists
    end
  end

  describe '.network_followers' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/network/followers').and_return(mock_model)

      model.network_followers
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.network_followers
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.network_followers
    end
  end

  describe '.network_following' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/network/following').and_return(mock_model)

      model.network_following
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.network_following
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.network_following
    end
  end

  describe '.network_friends' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/network/friends').and_return(mock_model)

      model.network_friends
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.network_friends
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.network_friends
    end
  end

  describe '.profile' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/profile').and_return(mock_model)

      model.profile
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.profile
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.profile
    end
  end

  describe '.progress_collected' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/progress/collected').and_return(mock_model)

      model.progress_collected
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.progress_collected
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.progress_collected
    end
  end

  describe '.progress_watched' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/progress/watched').and_return(mock_model)

      model.progress_watched
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.progress_watched
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.progress_watched
    end
  end

  describe '.ratings_episodes' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/ratings/episodes').and_return(mock_model)

      model.ratings_episodes
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.ratings_episodes
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.ratings_episodes
    end
  end

  describe '.ratings_movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/ratings/movies').and_return(mock_model)

      model.ratings_movies
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.ratings_movies
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.ratings_movies
    end
  end

  describe '.ratings_shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/ratings/shows').and_return(mock_model)

      model.ratings_shows
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.ratings_shows
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.ratings_shows
    end
  end

  describe '.watching' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/watching').and_return(mock_model)

      model.watching
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watching
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watching
    end
  end

  describe '.watch_list_episode' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/watchlist/episodes').and_return(mock_model)

      model.watch_list_episode
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watch_list_episode
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watch_list_episode
    end
  end

  describe '.watch_list_movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/watchlist/movies').and_return(mock_model)

      model.watch_list_movies
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watch_list_movies
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watch_list_movies
    end
  end

  describe '.watch_list_shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('user/watchlist/shows').and_return(mock_model)

      model.watch_list_shows
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watch_list_shows
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watch_list_shows
    end
  end
end
