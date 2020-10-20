# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComplexBuildingsController do
  it 'creates complex building' do
    post :create, params: {
      complex_building: { 
        owner: 'test@test.co',
        address: 'test',
        units: 1,
        sqmt: 1,
        price: 123.23
      }
    }
    expect(response.status).to eq 302
  end
end
