# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :asset, only: %i[new create]

  def index
    @assets = Asset.all
  end

  def show
    @asset = Asset.find_by_id(params[:id])
    redirect_to root_path if @asset.nil?
  end

  def new; end

  def create
    new_asset = klass.new(asset_params)

    if new_asset.save
      redirect_to root_path
    else
      render :new
    end
  end

  def purchase
    email = purchase_params[:email]
    VeryLongJob.perform_later(email, params[:property_id])
    redirect_to root_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:email)
  end

  def asset
    @asset = klass.new
  end

  def cast(bool)
    ActiveModel::Type::Boolean.new.cast(bool || false)
  end
end
