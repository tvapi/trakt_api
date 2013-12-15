require 'spec_helper'

describe TraktApi::Client do
  let(:model) { TraktApi::Client.new }

  describe '.account' do
    it 'should return account class' do
      model.account.class.should == TraktApi::Account
    end
  end

  describe '.activity' do
    it 'should return account class' do
      model.activity.class.should == TraktApi::Activity
    end
  end

  describe '.calendar' do
    it 'should return calendar class' do
      model.calendar.class.should == TraktApi::Calendar
    end
  end

  describe '.comment' do
    it 'should return comment class' do
      model.comment.class.should == TraktApi::Comment
    end
  end

  describe '.genres' do
    it 'should return genres class' do
      model.genres.class.should == TraktApi::Genres
    end
  end

  describe '.lists' do
    it 'should return lists class' do
      model.lists.class.should == TraktApi::Lists
    end
  end

  describe '.movie' do
    it 'should return movie class' do
      model.movie.class.should == TraktApi::Movie
    end
  end

  describe '.movies' do
    it 'should return movies class' do
      model.movies.class.should == TraktApi::Movies
    end
  end

  describe '.network' do
    it 'should return network class' do
      model.network.class.should == TraktApi::Network
    end
  end

  describe '.rate' do
    it 'should return rate class' do
      model.rate.class.should == TraktApi::Rate
    end
  end

  describe '.recommendations' do
    it 'should return movies class' do
      model.recommendations.class.should == TraktApi::Recommendations
    end
  end

  describe '.search' do
    it 'should return search class' do
      model.search.class.should == TraktApi::Search
    end
  end

  describe '.server' do
    it 'should return server class' do
      model.server.class.should == TraktApi::Server
    end
  end

  describe '.show' do
    it 'should return show class' do
      model.show.class.should == TraktApi::Show
    end
  end

  describe '.shows' do
    it 'should return shows class' do
      model.shows.class.should == TraktApi::Shows
    end
  end

  describe '.user' do
    it 'should return user class' do
      model.user.class.should == TraktApi::User
    end
  end
end
