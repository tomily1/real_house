# frozen_string_literal: true

class VeryLongJob < ApplicationJob
  # call this method when you have to perform the very long task
  def perform(email, property_id)
    sleep 60
    # rubocop:disable Lint/Void
    true # the task was completed correctly
    # rubocop:enable Lint/Void
    asset = Asset.find_by_id(property_id)
    return if asset.nil?

    mailer = PurchaseMailer.with(asset: asset, email: email)
    mailer.order_email.deliver_later
    mailer.purchase_email.deliver_later
  end
end
