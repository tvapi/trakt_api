require 'spec_helper'

describe TraktApi::Rate do
  let(:model) { TraktApi::Rate.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.episode' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/episode').and_return(mock_model)

      model.episode(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode(sample: true)
    end
  end

  describe '.episodes' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episodes(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/episodes').and_return(mock_model)

      model.episodes(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episodes(sample: true)
    end
  end

  describe '.movie' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.movie(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/movie').and_return(mock_model)

      model.movie(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movie(sample: true)
    end
  end

  describe '.movies' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.movies(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/movies').and_return(mock_model)

      model.movies(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movies(sample: true)
    end
  end

  describe '.show' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.show(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/show').and_return(mock_model)

      model.show(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.show(sample: true)
    end
  end

  describe '.shows' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.shows(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('rate/shows').and_return(mock_model)

      model.shows(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.shows(sample: true)
    end
  end
end
