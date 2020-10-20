# frozen_string_literal: true

class House < Asset
  validates_presence_of :rooms, :sqmt, :floors, :air_cond, :price
end
