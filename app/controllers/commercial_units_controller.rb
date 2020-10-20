# frozen_string_literal: true

class CommercialUnitsController < AssetsController
  def klass
    CommercialUnit
  end

  private

  def asset_params
    params.require(:commercial_unit).permit(
      :owner,
      :address,
      :shops,
      :sqmt,
      :parking,
      :price,
      images: []
    )
  end
end
