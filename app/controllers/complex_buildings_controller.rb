# frozen_string_literal: true

class ComplexBuildingsController < AssetsController
  def type
    ComplexBuilding
  end

  private

  def asset_params
    params.permit(
      :owner,
      :address,
      :units,
      :sqmt,
      :price,
      image: []
    )
  end
end
