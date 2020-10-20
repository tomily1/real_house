# frozen_string_literal: true

class ComplexBuilding < Asset
  validates_presence_of :units, :sqmt, :price, :images
end
