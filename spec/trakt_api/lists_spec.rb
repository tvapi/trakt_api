require 'spec_helper'

describe TraktApi::Lists do
  let(:model) { TraktApi::Lists.new(TraktApi::Client.new) }

  describe '.add' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("lists/add.json/#{TraktApi::Configuration.api_key}", name: 'test',
        privacy: 'private', sample: true).and_return(double(response: true))

      model.add(name: 'test', privacy: 'private', sample: true)
    end
  end

  describe '.delete' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("lists/delete.json/#{TraktApi::Configuration.api_key}", slug: 'test').
        and_return(double(response: true))

      model.delete(slug: 'test')
    end
  end

  describe '.items_add' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("lists/items/add.json/#{TraktApi::Configuration.api_key}", slug: 'test',
        items: []).and_return(double(response: true))

      model.items_add(slug: 'test', items: [])
    end
  end

  describe '.items_delete' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("lists/items/delete.json/#{TraktApi::Configuration.api_key}", slug: 'test',
        items: []).and_return(double(response: true))

      model.items_delete(slug: 'test', items: [])
    end
  end

  describe '.update' do
    it 'should call new with specific params' do
      model.instance_variable_set("@method", :post)
      model.should_receive(:post).with("lists/update.json/#{TraktApi::Configuration.api_key}", slug: 'test', sample: 1).
        and_return(double(response: true))

      model.update(slug: 'test', sample: 1)
    end
  end
end
