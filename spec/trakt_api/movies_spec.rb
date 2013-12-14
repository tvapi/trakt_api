require 'spec_helper'

describe TraktApi::Movies do
  let(:model) { TraktApi::Movies.new(TraktApi::Client.new) }

  describe '.trending' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movies/trending.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.trending
    end
  end

  describe '.updated' do
    it 'should call new with specific params' do
      time = Time.now

      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("movies/updated.json/#{TraktApi::Configuration.api_key}/#{time.to_i}").
        and_return(double(response: true))

      model.updated(time: time)
    end
  end
end
