require 'spec_helper'

describe TraktApi::Calendar do
  let(:model) { TraktApi::Calendar.new(TraktApi::Client.new) }

  describe '.settings' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("calendar/premieres.json/#{TraktApi::Configuration.api_key}/20000101").
        and_return(double(response: true))

      model.premieres(date: Date.new(2000, 1, 1))
    end
  end

  describe '.shows' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("calendar/shows.json/#{TraktApi::Configuration.api_key}/20000101").
        and_return(double(response: true))

      model.shows(date: Date.new(2000, 1, 1))
    end
  end

  describe '.share_uri_suffix' do
    it 'should return correct string' do
      model.stub(:api_key).and_return('API_KEY/')
      model.stub(:append_date).and_return('APPEND_DATE')

      model.share_uri_suffix({}).should == '/API_KEY/APPEND_DATE'
    end
  end

  describe '.append_date' do
    it 'should return correct string when date exists' do
      model.stub(:date).and_return('DATE/')
      model.stub(:append_days).and_return('APPEND_DAYS')

      model.append_date({}).should == '/DATE/APPEND_DAYS'
    end

    it 'should return empty string when date not exists' do
      model.stub(:date).and_return(nil)

      model.append_date({}).should == ''
    end
  end

  describe '.append_days' do
    it 'should return correct string when date exists' do
      model.append_days({days: 'DAYS'}).should == '/DAYS'
    end

    it 'should return empty string when date not exists' do
      model.append_days({}).should == ''
    end
  end

  describe '.date' do
    it 'should return date when it is Date class' do
      model.date(date: Date.new(2013, 1, 1)).should == '20130101'
    end

    it 'should return date when it is String class' do
      model.date(date: '20130101').should == '20130101'
    end
  end
end
