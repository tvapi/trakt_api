require 'spec_helper'

describe TraktApi::Search do
  let(:model) { TraktApi::Search.new(api_key: API_KEY) }

  describe '.search' do
    it 'should return response class' do
      response = model.run(query: 'batman', type: 'show')
      ap response.body

      expect(response).to be_a(Faraday::Response)
      expect(response.status).to eq(200)
      expect(response.body).to be_a(Array)
    end
  end
end
