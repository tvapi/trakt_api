require 'spec_helper'

describe TraktApi::Shows::Seasons do
  let(:model) { TraktApi::Shows::Seasons.new(api_key: API_KEY) }

  describe '.find' do
    it 'should return response class' do
      response = model.all(id: 'game-of-thrones')
      ap response.body

      expect(response).to be_a(Faraday::Response)
      expect(response.status).to eq(200)
      expect(response.body).to be_a(Array)
    end
  end
end
