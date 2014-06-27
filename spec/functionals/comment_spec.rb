require 'spec_helper'

describe TraktApi::Comment do
  let(:model) { TraktApi::Comment.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  before do
    pending 'FIXME'
  end

  describe '.episode' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.episode(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('comment/episode').and_return(mock_model)

      model.episode(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.episode(sample: true)
    end
  end

  describe '.movie' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.movie(sample: true)
    end

    it 'should call postt with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('comment/movie').and_return(mock_model)

      model.movie(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.movie(sample: true)
    end
  end

  describe '.show' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.show(sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('comment/show').and_return(mock_model)

      model.show(sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.show(sample: true)
    end
  end
end
