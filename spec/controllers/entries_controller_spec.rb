require 'rails_helper'

describe EntriesController, type: :controller do
  describe 'index' do
    it 'has response 200' do
      get :index
      expect(response.status).to eq 200
    end
  end
end
