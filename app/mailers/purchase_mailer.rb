# frozen_string_literal: true

class PurchaseMailer < ApplicationMailer
  def order_email
    @owner = params[:asset].owner
    @id = params[:asset].id
    @buyer = params[:email]
    mail(to: @owner, subject: "You have a purchase for asset ##{@id}")
  end

  def purchase_email
    @owner = params[:asset].owner
    @id = params[:asset].id
    @buyer = params[:email]

    mail(to: @buyer, subject: "You have successfully made a purchase for asset ##{@id}")
  end
end
