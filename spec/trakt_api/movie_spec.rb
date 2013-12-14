require 'spec_helper'

describe TraktApi::Movie do
  let(:model) { TraktApi::Movie.new(TraktApi::Client.new) }

  describe '.cancel_checkin' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/cancelcheckin.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.cancel_checkin
    end
  end

  describe '.cancel_watching' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/cancelwatching.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.cancel_watching
    end
  end

  describe '.checkin' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/checkin.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.checkin(sample: true)
    end
  end

  describe '.comments' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/comments.json/#{TraktApi::Configuration.api_key}/TITLE/TYPE").
        and_return(double(response: true))

      model.comments(title: 'TITLE', type: 'TYPE')
    end
  end

  describe '.scrobble' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/scrobble.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.scrobble(sample: true)
    end
  end

  describe '.seen' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/seen.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.seen(sample: true)
    end
  end

  describe '.library' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/library.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.library(sample: true)
    end
  end

  describe '.related' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/related.json/#{TraktApi::Configuration.api_key}/TITLE/HIDEWATCH").
        and_return(double(response: true))

      model.related(title: 'TITLE', hidewatched: 'HIDEWATCH')
    end
  end

  describe '.stats' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/stats.json/#{TraktApi::Configuration.api_key}/TITLE").
        and_return(double(response: true))

      model.stats(title: 'TITLE')
    end
  end

  describe '.summary' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/summary.json/#{TraktApi::Configuration.api_key}/TITLE").
        and_return(double(response: true))

      model.summary(title: 'TITLE')
    end
  end

  describe '.summaries' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/summaries.json/#{TraktApi::Configuration.api_key}/TITLE/EXTENDED").
        and_return(double(response: true))

      model.summaries(title: 'TITLE', extended: 'EXTENDED')
    end
  end

  describe '.unlibrary' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/unlibrary.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.unlibrary(sample: true)
    end
  end

  describe '.unseen' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/unseen.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.unseen(sample: true)
    end
  end

  describe '.unwatch_list' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/unwatchlist.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.unwatch_list(sample: true)
    end
  end

  describe '.watching' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/watching.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.watching(sample: true)
    end
  end

  describe '.watching_now' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movie/watchingnow.json/#{TraktApi::Configuration.api_key}/TITLE").
        and_return(double(response: true))

      model.watching_now(title: 'TITLE')
    end
  end

  describe '.watch_list' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("movie/watchlist.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.watch_list(sample: true)
    end
  end
end
