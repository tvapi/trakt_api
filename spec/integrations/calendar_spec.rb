require 'integration_spec_helper'

describe TraktApi::Calendar do
  let(:model) { TraktApi::Calendar.new(TraktApi::Client.new) }

  describe 'real request' do
    describe '.premieres' do
      it 'should return response class' do
        model.premieres.class.should == HTTParty::Response
      end

      describe 'with authentication' do
        it 'should return response class' do
          model.premieres(date: Date.today, days: 7, auth: true).class.should == HTTParty::Response
        end
      end
    end

    describe '.shows' do
      it 'should return response class' do
        model.shows.class.should == HTTParty::Response
      end

      describe 'with authentication' do
        it 'should return response class' do
          model.shows(date: Date.today, days: 7, auth: true).class.should == HTTParty::Response
        end
      end
    end
  end
end
