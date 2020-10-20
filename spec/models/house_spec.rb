# frozen_string_literal: true

require 'rails_helper'

RSpec.describe House do
  it 'should be initialized' do
    expect(described_class.new).to be_truthy
  end

  it 'should be a type of asset' do
    expect(described_class.new).to be_a Asset
  end

  describe 'validation' do
    it 'should be validated' do
      expect(described_class.new.valid?).to eq false
    end

    it 'should be valid' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          rooms: 1,
          sqmt: 1,
          floors: 1,
          air_cond: true,
          price: 123.23
        ).valid?
      ).to eq true
    end

    it 'should validate email' do
      expect(
        described_class.new(
          owner: 'test',
          address: 'test',
          rooms: 1,
          sqmt: 1,
          floors: 1,
          air_cond: true,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate rooms' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          rooms: nil,
          sqmt: 1,
          floors: 1,
          air_cond: true,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate sqmt' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          rooms: 1,
          sqmt: nil,
          floors: 1,
          air_cond: true,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate floors' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          rooms: 1,
          sqmt: 1,
          floors: nil,
          air_cond: true,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate price' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          rooms: 1,
          sqmt: 1,
          floors: 1,
          air_cond: true,
          price: nil
        ).valid?
      ).to eq false
    end
  end
end
