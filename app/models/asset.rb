# frozen_string_literal: true

class Asset < ApplicationRecord
  has_many_attached :images
end
