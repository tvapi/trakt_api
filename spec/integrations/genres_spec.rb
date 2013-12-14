require 'integration_spec_helper'

describe TraktApi::Genres do
  let(:model) { TraktApi::Genres.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.movies' do
      it 'should return response class' do
        model.movies.class.should == HTTParty::Response
      end
    end

    describe '.shows' do
      it 'should return response class' do
        model.shows.class.should == HTTParty::Response
      end
    end
  end
end
