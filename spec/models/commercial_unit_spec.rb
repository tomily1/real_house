# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommercialUnit do
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
          shops: 1,
          sqmt: 1,
          parking: 1,
          price: 123.23
        ).valid?
      ).to eq true
    end

    it 'should validate email' do
      expect(
        described_class.new(
          owner: 'test',
          address: 'test',
          shops: 1,
          sqmt: 1,
          parking: 1,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate shops' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          shops: nil,
          sqmt: 1,
          parking: 1,
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
          parking: 1,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate parking' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          shops: 1,
          sqmt: 1,
          parking: nil,
          price: 123.23
        ).valid?
      ).to eq false
    end

    it 'should validate price' do
      expect(
        described_class.new(
          owner: 'test@test.co',
          address: 'test',
          shops: 1,
          sqmt: 1,
          parking: 1,
          price: nil
        ).valid?
      ).to eq false
    end
  end
end
