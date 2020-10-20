# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :assets_types

  def assets_types
    {
      'House' => 'house',
      'Commercial Unit' => 'commercial_unit',
      'Complex Building' => 'complex_building'
    }
  end
end
