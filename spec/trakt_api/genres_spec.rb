require 'spec_helper'

describe TraktApi::Genres do
  let(:model) { TraktApi::Genres.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('genres/movies').and_return(mock_model)

      model.movies
    end
  end

  describe '.shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('genres/shows').and_return(mock_model)

      model.shows
    end
  end
end
