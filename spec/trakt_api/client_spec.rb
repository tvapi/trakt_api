require 'spec_helper'

describe TraktApi::Client do
  let(:model) { TraktApi::Client.new }

  describe '.calendar' do
    it 'should return calendar class' do
      model.calendar.class.should == TraktApi::Calendar
    end
  end

  describe '.server' do
    it 'should return server class' do
      model.server.class.should == TraktApi::Server
    end
  end
end
