require 'spec_helper'

describe Api::V1::BooksController, type: :controller do
  let(:body)  { JSON.parse(response.body) if response.body.present? }

  describe 'GET #index' do
  	it 'success' do
  		expect(response.status).to eq 200
  	end
  end
end