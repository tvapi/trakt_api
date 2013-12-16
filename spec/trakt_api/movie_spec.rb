require 'spec_helper'

describe TraktApi::Movie do
  let(:model) { TraktApi::Movie.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.cancel_checkin' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.cancel_checkin
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/cancelcheckin').and_return(mock_model)

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
      model.should_receive(:post).with('movie/cancelwatching').and_return(mock_model)

      model.cancel_watching
    end
  end

  describe '.checkin' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.checkin(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/checkin').and_return(mock_model)

      model.checkin(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.checkin(sample: true)
    end
  end

  describe '.comments' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/comments').and_return(mock_model)

      model.comments(title: 'TITLE', type: 'TYPE')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.comments(title: 'TITLE', type: 'TYPE')
    end
  end

  describe '.scrobble' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.scrobble(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/scrobble').and_return(mock_model)

      model.scrobble(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.scrobble(sample: true)
    end
  end

  describe '.seen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.seen(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/seen').and_return(mock_model)

      model.seen(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.seen(sample: true)
    end
  end

  describe '.library' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.library(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/library').and_return(mock_model)

      model.library(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.library(sample: true)
    end
  end

  describe '.related' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/related').and_return(mock_model)

      model.related(title: 'TITLE', hidewatched: 'HIDEWATCH')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.related(title: 'TITLE', hidewatched: 'HIDEWATCH')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.related(title: 'TITLE', hidewatched: 'HIDEWATCH')
    end
  end

  describe '.stats' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/stats').and_return(mock_model)

      model.stats(title: 'TITLE')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.stats(title: 'TITLE')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.stats(title: 'TITLE')
    end
  end

  describe '.summary' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/summary').and_return(mock_model)

      model.summary(title: 'TITLE')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.summary(title: 'TITLE')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.summary(title: 'TITLE')
    end
  end

  describe '.summaries' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/summaries').and_return(mock_model)

      model.summaries(title: 'TITLE', extended: 'EXTENDED')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.summaries(title: 'TITLE', extended: 'EXTENDED')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.summaries(title: 'TITLE', extended: 'EXTENDED')
    end
  end

  describe '.unlibrary' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unlibrary(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/unlibrary').and_return(mock_model)

      model.unlibrary(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unlibrary(sample: true)
    end
  end

  describe '.unseen' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unseen(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/unseen').and_return(mock_model)

      model.unseen(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unseen(sample: true)
    end
  end

  describe '.unwatch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.unwatch_list(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/unwatchlist').and_return(mock_model)

      model.unwatch_list(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.unwatch_list(sample: true)
    end
  end

  describe '.watching' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.watching(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/watching').and_return(mock_model)

      model.watching(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watching(sample: true)
    end
  end

  describe '.watching_now' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movie/watchingnow').and_return(mock_model)

      model.watching_now(title: 'TITLE')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watching_now(title: 'TITLE')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.watching_now(title: 'TITLE')
    end
  end

  describe '.watch_list' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.watch_list(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('movie/watchlist').and_return(mock_model)

      model.watch_list(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.watch_list(sample: true)
    end
  end
end
