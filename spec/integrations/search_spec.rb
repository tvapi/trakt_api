require 'integration_spec_helper'

describe TraktApi::Search do
  let(:model) { TraktApi::Search.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.episodes' do
      it 'should return response class' do
        model.episodes('test').class.should == HTTParty::Response
      end
    end

    describe '.movies' do
      it 'should return response class' do
        model.movies('test').class.should == HTTParty::Response
      end
    end

    describe '.people' do
      it 'should return response class' do
        model.people('test').class.should == HTTParty::Response
      end
    end

    describe '.shows' do
      it 'should return response class' do
        model.shows('test').class.should == HTTParty::Response
      end
    end

    describe '.users' do
      it 'should return response class' do
        model.users('test').class.should == HTTParty::Response
      end
    end
  end
end
