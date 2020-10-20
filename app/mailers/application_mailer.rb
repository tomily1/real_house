# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'support@realhouse.com'
  layout 'mailer'
end
