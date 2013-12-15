require 'spec_helper'

describe TraktApi::Search do
  let(:model) { TraktApi::Search.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.episodes' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('search/episodes').and_return(mock_model)

      model.episodes(query: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:params).and_return(mock_model)

      model.episodes(query: 'test')
    end
  end

  describe '.movies' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('search/movies').and_return(mock_model)

      model.movies(query: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:params).and_return(mock_model)

      model.movies(query: 'test')
    end
  end

  describe '.people' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('search/people').and_return(mock_model)

      model.people(query: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:params).and_return(mock_model)

      model.people(query: 'test')
    end
  end

  describe '.shows' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('search/shows').and_return(mock_model)

      model.shows(query: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows(query: 'test')
    end
  end

  describe '.users' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('search/users').and_return(mock_model)

      model.users(query: 'test')
    end

    it 'should call restful_params' do
      model.should_receive(:params).and_return(mock_model)

      model.users(query: 'test')
    end
  end
end
