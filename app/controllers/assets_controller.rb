# frozen_string_literal: true

class AssetsController < ApplicationController
  def index
    @assets = Asset.all
  end

  def new; end

  def create
    asset = klass.new(asset_params)

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
