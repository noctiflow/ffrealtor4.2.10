class LeadMailer < ApplicationMailer
  default from: "jeff@noctiflow.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_mailer.new_lead_notification.subject
  #
  def new_lead_notification(lead)
    @lead = Lead.last
    @greeting = "Hi"

    mail to: "jmacdonald404@gmail.com"
  end
end
