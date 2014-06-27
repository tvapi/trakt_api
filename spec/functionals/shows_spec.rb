require 'spec_helper'

describe TraktApi::Shows do
  let(:model) { TraktApi::Shows.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  before do
    pending 'FIXME'
  end

  describe '.trending' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('shows/trending').and_return(mock_model)

      model.trending
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.trending
    end
  end

  describe '.updated' do
    let(:time) { Time.now.to_i }

    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('shows/updated').and_return(mock_model)

      model.updated(time: time)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.updated(time: time)
    end

    it 'should call restful_params' do
      model.should_receive(:restful_params).and_return(mock_model)

      model.updated(time: time)
    end
  end
end
