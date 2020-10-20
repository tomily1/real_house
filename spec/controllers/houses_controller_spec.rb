# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HousesController do
  it 'creates House asset' do
    post :create, params: {
      house: {
        owner: 'test@test.co',
        address: 'test',
        rooms: 1,
        sqmt: 1,
        floors: 1,
        air_cond: true,
        price: 123.23
      }
    }
    expect(response.status).to eq 302
  end
end
