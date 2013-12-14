require 'spec_helper'

describe TraktApi::Client do
  let(:model) { TraktApi::Client.new }

  describe '.server' do
    it 'should return server class' do
      model.server.class.should == TraktApi::Server
    end
  end
end
