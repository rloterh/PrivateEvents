require 'rails_helper'

RSpec.describe 'Events page', type: :request do
  describe 'GET events#index' do
    it 'should get index' do
      get '/events'
      expect(response).to have_http_status(200)
    end
  end
end
