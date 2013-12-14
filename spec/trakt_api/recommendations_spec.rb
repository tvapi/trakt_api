require 'spec_helper'

describe TraktApi::Recommendations do
  let(:model) { TraktApi::Recommendations.new(TraktApi::Client.new) }

  describe '.movies' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("recommendations/movies.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.movies(sample: true)
    end
  end

  describe '.movies_dismiss' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("recommendations/movies/dismiss.json/#{TraktApi::Configuration.api_key}",
        sample: true).and_return(double(response: true))

      model.movies_dismiss(sample: true)
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("recommendations/shows.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.shows(sample: true)
    end
  end

  describe '.shows_dismiss' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("recommendations/shows/dismiss.json/#{TraktApi::Configuration.api_key}",
        sample: true).and_return(double(response: true))

      model.shows_dismiss(sample: true)
    end
  end
end
