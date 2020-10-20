# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommercialUnitsController do
  it 'creates commercial units' do
    post :create, params: {
      commercial_unit: {
        owner: 'test@test.co',
        address: 'test',
        shops: 1,
        sqmt: 1,
        parking: 1,
        price: 123.23
      }
    }
    expect(response.status).to eq 302
  end
end
