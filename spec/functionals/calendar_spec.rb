require 'spec_helper'

describe TraktApi::Calendar do
  let(:model) { TraktApi::Calendar.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  before do
    pending 'FIXME'
  end

  describe '.settings' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('calendar/premieres').and_return(mock_model)

      model.premieres(date: '20130101')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.premieres(date: '20130101')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.premieres(date: '20130101')
    end
  end

  describe '.shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('calendar/shows').and_return(mock_model)

      model.shows(date: '20130101')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows(date: '20130101')
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.premieres(date: '20130101')
    end
  end
end
