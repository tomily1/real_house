# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :assets_types

  def assets_types
    {
      'house' => 'House',
      'commercial_unit' => 'Commercial Unit',
      'complex_building' => 'Complex Building'
    }
  end
end
