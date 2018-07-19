require 'rails_helper'

RSpec.describe "Panels", type: :request do
  describe 'POST #create' do
    context 'with invalid params' do
      it 'returns an unprocessable entity response' do
        post panels_path, params: { panel: { serial: '', latitude: '', longitude: '', brand: '' }, format: :json }
        expect(response).to have_http_status(422)
      end
    end
  end
end
