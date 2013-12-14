require 'spec_helper'

describe TraktApi::Calendar do
  let(:model) { TraktApi::Calendar.new(TraktApi::Client.new) }

  describe '.settings' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("calendar/premieres.json/#{TraktApi::Configuration.api_key}/20130101").
        and_return(double(response: true))

      model.premieres(date: '20130101')
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("calendar/shows.json/#{TraktApi::Configuration.api_key}/20130101").
        and_return(double(response: true))

      model.shows(date: '20130101')
    end
  end
end
