# frozen_string_literal: true

class HousesController < PropertiesController
  def klass
    House
  end

  private

  def asset_params
    params.require(:house).permit(
      :owner,
      :address,
      :rooms,
      :sqmt,
      :floors,
      :air_cond,
      :price,
      images: []
    ).merge!('air_cond' => cast(params.require(:house).permit(:air_cond)))
  end
end
