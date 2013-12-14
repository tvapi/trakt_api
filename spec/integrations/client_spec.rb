require 'integration_spec_helper'

describe TraktApi::Client do
  let(:client) { TraktApi::Client.new }

  describe 'real request' do
    describe '.calendar' do
      describe '.premieres' do
        it 'should return response class' do
          client.calendar.premieres.class.should == HTTParty::Response
        end

        describe 'with authentication' do
          it 'should return response class' do
            client.calendar.premieres(date: Date.today, days: 7, auth: true).class.should == HTTParty::Response
          end
        end
      end

      describe '.shows' do
        it 'should return response class' do
          client.calendar.shows.class.should == HTTParty::Response
        end

        describe 'with authentication' do
          it 'should return response class' do
            client.calendar.shows(date: Date.today, days: 7, auth: true).class.should == HTTParty::Response
          end
        end
      end
    end

    describe '.genres' do
      describe '.movies' do
        it 'should return response class' do
          client.genres.movies.class.should == HTTParty::Response
        end
      end

      describe '.shows' do
        it 'should return response class' do
          client.genres.shows.class.should == HTTParty::Response
        end
      end
    end

    describe '.movies' do
      describe '.trending' do
        it 'should return response class' do
          client.movies.trending.class.should == HTTParty::Response
        end

        describe 'with authentication' do
          it 'should return response class' do
            client.movies.trending(auth: true).class.should == HTTParty::Response
          end
        end
      end

      describe '.updated' do
        it 'should return response class' do
          client.movies.updated(time: Time.now).class.should == HTTParty::Response
        end
      end
    end

    describe '.server' do
      describe '.time' do
        it 'should return response class' do
          client.server.time.class.should == HTTParty::Response
        end
      end
    end

    describe '.shows' do
      describe '.trending' do
        it 'should return response class' do
          client.shows.trending.class.should == HTTParty::Response
        end

        describe 'with authentication' do
          it 'should return response class' do
            client.shows.trending(auth: true).class.should == HTTParty::Response
          end
        end
      end

      describe '.updated' do
        it 'should return response class' do
          client.shows.updated(time: Time.now).class.should == HTTParty::Response
        end
      end
    end
  end
end