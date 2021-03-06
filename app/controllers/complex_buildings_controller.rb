# frozen_string_literal: true

class ComplexBuildingsController < PropertiesController
  def klass
    ComplexBuilding
  end

  private

  def asset_params
    params.require(:complex_building).permit(
      :owner,
      :address,
      :units,
      :sqmt,
      :price,
      images: []
    )
  end
end
