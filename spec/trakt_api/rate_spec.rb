require 'spec_helper'

describe TraktApi::Rate do
  let(:model) { TraktApi::Rate.new(TraktApi::Client.new) }

  describe '.episode' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/episode.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.episode(sample: true)
    end
  end

  describe '.episodes' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/episodes.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.episodes(sample: true)
    end
  end

  describe '.movie' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/movie.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.movie(sample: true)
    end
  end

  describe '.movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/movies.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.movies(sample: true)
    end
  end

  describe '.show' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/show.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.show(sample: true)
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("rate/shows.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.shows(sample: true)
    end
  end
end
