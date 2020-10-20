# frozen_string_literal: true

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # rubocop:disable Style/GuardClause
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || 'is not an email')
    end
    # rubocop:enable Style/GuardClause
  end
end

class Asset < ApplicationRecord
  has_many_attached :images

  validates :owner, email: true, presence: true
  validates :address, presence: true
end
