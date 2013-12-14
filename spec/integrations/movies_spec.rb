require 'integration_spec_helper'

describe TraktApi::Movies do
  let(:model) { TraktApi::Movies.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.trending' do
      it 'should return response class' do
        model.trending.class.should == HTTParty::Response
      end

      describe 'with authentication' do
        it 'should return response class' do
          model.trending(auth: true).class.should == HTTParty::Response
        end
      end
    end

    describe '.updated' do
      it 'should return response class' do
        model.updated(time: Time.now).class.should == HTTParty::Response
      end
    end
  end
end
