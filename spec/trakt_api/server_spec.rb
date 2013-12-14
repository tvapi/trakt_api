require 'spec_helper'

describe TraktApi::Server do
  let(:klass) { TraktApi::Server }
  let(:model) { klass.new(TraktApi::Client.new) }

  describe '.time' do
    it 'should call class get method with specific params' do
      model.instance_variable_set("@method", :get)
      model.should_receive(:get).with("server/time.json/#{TraktApi::Configuration.api_key}").
        and_return(double(response: true))

      model.time
    end
  end
end
