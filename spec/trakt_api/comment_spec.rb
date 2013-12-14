require 'spec_helper'

describe TraktApi::Comment do
  let(:model) { TraktApi::Comment.new(TraktApi::Client.new) }

  describe '.episode' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("comment/episode.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.episode(sample: true)
    end
  end

  describe '.movie' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("comment/movie.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.movie(sample: true)
    end
  end

  describe '.show' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("comment/show.json/#{TraktApi::Configuration.api_key}", sample: true).
        and_return(double(response: true))

      model.show(sample: true)
    end
  end
end
