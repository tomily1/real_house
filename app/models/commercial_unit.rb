# frozen_string_literal: true

class CommercialUnit < Asset
  validates_presence_of :shops, :sqmt, :parking, :price
end
