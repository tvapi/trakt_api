require 'spec_helper'

describe TraktApi::Client do
  let(:model) { TraktApi::Client.new }

  describe '.calendar' do
    it 'should return calendar class' do
      model.calendar.class.should == TraktApi::Calendar
    end
  end

  describe '.genres' do
    it 'should return genres class' do
      model.genres.class.should == TraktApi::Genres
    end
  end

  describe '.movies' do
    it 'should return movies class' do
      model.movies.class.should == TraktApi::Movies
    end
  end

  describe '.server' do
    it 'should return server class' do
      model.server.class.should == TraktApi::Server
    end
  end

  describe '.shows' do
    it 'should return shows class' do
      model.shows.class.should == TraktApi::Shows
    end
  end
end
