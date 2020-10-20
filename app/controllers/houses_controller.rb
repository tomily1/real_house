# frozen_string_literal: true

class HousesController < AssetsController
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
    ).merge!('air_cond' => cast(params[:air_cond]))
  end
end
