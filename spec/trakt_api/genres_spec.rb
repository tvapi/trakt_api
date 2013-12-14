require 'spec_helper'

describe TraktApi::Genres do
  let(:model) { TraktApi::Genres.new(TraktApi::Client.new) }

  describe '.movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("genres/movies.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.movies
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("genres/shows.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.shows
    end
  end
end
