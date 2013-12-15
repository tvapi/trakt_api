require 'spec_helper'

describe TraktApi::Lists do
  let(:model) { TraktApi::Lists.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  describe '.add' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.add(name: 'test', privacy: 'private', sample: true)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('lists/add').and_return(mock_model)

      model.add(name: 'test', privacy: 'private', sample: true)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.add(name: 'test', privacy: 'private', sample: true)
    end
  end

  describe '.delete' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.delete(slug: 'test')
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('lists/delete').and_return(mock_model)

      model.delete(slug: 'test')
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.delete(slug: 'test')
    end
  end

  describe '.items_add' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.items_add(slug: 'test', items: [])
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('lists/items/add').and_return(mock_model)

      model.items_add(slug: 'test', items: [])
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.items_add(slug: 'test', items: [])
    end
  end

  describe '.items_delete' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.items_delete(slug: 'test', items: [])
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('lists/items/delete').and_return(mock_model)

      model.items_delete(slug: 'test', items: [])
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.items_delete(slug: 'test', items: [])
    end
  end

  describe '.update' do
    it 'should call auth' do
      model.should_receive(:auth).and_return(mock_model)

      model.update(slug: 'test', sample: 1)
    end

    it 'should call post with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with('lists/update').and_return(mock_model)

      model.update(slug: 'test', sample: 1)
    end

    it 'should call params' do
      model.should_receive(:params).and_return(mock_model)

      model.update(slug: 'test', sample: 1)
    end
  end
end
