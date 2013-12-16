require 'spec_helper'

describe TraktApi::Show do
  let(:model) { TraktApi::Show.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.cancel_checkin' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.cancel_checkin
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/cancelcheckin').and_return(mock_model)

      model.cancel_checkin
    end
  end

  describe '.cancel_watching' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.cancel_watching
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/cancelwatching').and_return(mock_model)

      model.cancel_watching
    end
  end

  describe '.check_in' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.check_in
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/checkin').and_return(mock_model)

      model.check_in
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.check_in
    end
  end

  describe '.comments' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/comments').and_return(mock_model)

      model.comments
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.comments
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.comments
    end
  end

  describe '.episode_comments' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/episode/comments').and_return(mock_model)

      model.episode_comments
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_comments
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.episode_comments
    end
  end

  describe '.episode_library' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_library
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/library').and_return(mock_model)

      model.episode_library
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_library
    end
  end

  describe '.episode_seen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_seen
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/seen').and_return(mock_model)

      model.episode_seen
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_seen
    end
  end

  describe '.episode_stats' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/episode/stats').and_return(mock_model)

      model.episode_stats
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_stats
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.episode_stats
    end
  end

  describe '.episode_summary' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/episode/summary').and_return(mock_model)

      model.episode_summary
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_summary
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.episode_summary
    end
  end

  describe '.episode_unlibrary' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_unlibrary
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/unlibrary').and_return(mock_model)

      model.episode_unlibrary
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_unlibrary
    end
  end

  describe '.episode_unseen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_unseen
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/unseen').and_return(mock_model)

      model.episode_unseen
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_unseen
    end
  end

  describe '.episode_unwatch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_unwatch_list
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/unwatchlist').and_return(mock_model)

      model.episode_unwatch_list
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_unwatch_list
    end
  end

  describe '.episode_watching_now' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/episode/watchingnow').and_return(mock_model)

      model.episode_watching_now
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_watching_now
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.episode_watching_now
    end
  end

  describe '.episode_watch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode_watch_list
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/episode/watchlist').and_return(mock_model)

      model.episode_watch_list
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode_watch_list
    end
  end

  describe '.library' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.library
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/library').and_return(mock_model)

      model.library
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library
    end
  end

  describe '.related' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/related').and_return(mock_model)

      model.related
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.related
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.related
    end
  end

  describe '.scrobble' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.scrobble
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/scrobble').and_return(mock_model)

      model.scrobble
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.scrobble
    end
  end

  describe '.season' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/season').and_return(mock_model)

      model.season
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.season
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.season
    end
  end

  describe '.season_library' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.season_library
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/season/library').and_return(mock_model)

      model.season_library
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.season_library
    end
  end

  describe '.season_seen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.season_seen
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/season/seen').and_return(mock_model)

      model.season_seen
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.season_seen
    end
  end

  describe '.seasons' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/seasons').and_return(mock_model)

      model.seasons
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.seasons
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.seasons
    end
  end

  describe '.seen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.seen
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/seen').and_return(mock_model)

      model.seen
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.seen
    end
  end

  describe '.stats' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/stats').and_return(mock_model)

      model.stats
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.stats
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.stats
    end
  end

  describe '.summary' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/summary').and_return(mock_model)

      model.summary
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.summary
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.summary
    end
  end

  describe '.summaries' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/summaries').and_return(mock_model)

      model.summaries
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.summaries
    end
  end

  describe '.unlibrary' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unlibrary
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/unlibrary').and_return(mock_model)

      model.unlibrary
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unlibrary
    end
  end

  describe '.unwatch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unwatch_list
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/unwatchlist').and_return(mock_model)

      model.unwatch_list
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unwatch_list
    end
  end

  describe '.watching' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.watching
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/watching').and_return(mock_model)

      model.watching
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watching
    end
  end

  describe '.watching_now' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('show/watchingnow').and_return(mock_model)

      model.watching_now
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watching_now
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watching_now
    end
  end

  describe '.watch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.watch_list
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('show/watchlist').and_return(mock_model)

      model.watch_list
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watch_list
    end
  end
end
