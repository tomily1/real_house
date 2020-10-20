# frozen_string_literal: true

class VeryLongJob < ApplicationJob
  # call this method when you have to perform the very long task
  def perform(email, property_id)
    sleep 60
    true # the task was completed correctly
    asset = Asset.find(property_id)

    mailer = PurchaseMailer.with(asset: asset, email: email)
    mailer.order_email.deliver_later
    mailer.purchase_email.deliver_later
  end
end
