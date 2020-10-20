# frozen_string_literal: true

class CommercialUnitsController < AssetsController
  def type
    CommercialUnit
  end

  private

  def asset_params
    params.permit(
      :owner,
      :address,
      :shops,
      :sqmt,
      :parking,
      :price,
      image: []
    )
  end
end
