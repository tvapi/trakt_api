require 'spec_helper'

describe TraktApi::Movies do
  let(:model) { TraktApi::Movies.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.trending' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('movies/trending').and_return(mock_model)

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
      model.should_receive(:get).with('movies/updated').and_return(mock_model)

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
