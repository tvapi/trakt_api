require 'spec_helper'

describe TraktApi::Recommendations do
  let(:model) { TraktApi::Recommendations.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.movies' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.movies(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('recommendations/movies').and_return(mock_model)

      model.movies(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movies(sample: true)
    end
  end

  describe '.movies_dismiss' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.movies_dismiss(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('recommendations/movies/dismiss').and_return(mock_model)

      model.movies_dismiss(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movies_dismiss(sample: true)
    end
  end

  describe '.shows' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.shows(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('recommendations/shows').and_return(mock_model)

      model.shows(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows(sample: true)
    end
  end

  describe '.shows_dismiss' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.shows_dismiss(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('recommendations/shows/dismiss').and_return(mock_model)

      model.shows_dismiss(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows_dismiss(sample: true)
    end
  end
end
