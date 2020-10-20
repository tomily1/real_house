# frozen_string_literal: true

class AssetsController < ApplicationController
  def index; end

  def new; end

  def create
    parameters = asset_params
    images = parameters.delete(:image)
    # binding.pry
    asset = type.new(parameters)
    
    if asset.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cast(bool)
    ActiveModel::Type::Boolean.new.cast(bool || false)
  end
end
