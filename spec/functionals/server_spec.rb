require 'spec_helper'

describe TraktApi::Server do
  let(:model) { TraktApi::Server.new(TraktApi::Client.new) }
  let(:mock_model) { SampleModel.new }

  before do
    pending 'FIXME'
  end

  describe '.time' do
    it 'should call get with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with('server/time').and_return(mock_model)

      model.time
    end
  end
end
