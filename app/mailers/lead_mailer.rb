class LeadMailer < ApplicationMailer
  default from: "jeff@noctiflow.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_mailer.new_lead_notification.subject
  #


  # def new_lead_notification(lead)
  #   @lead = lead
  #   @greeting = "Hi"
  #
  #   mail to: "jmacdonald404@gmail.com"
  # end

  # above works but trying to expand to use mailgun gem methods

  def new_lead_notification(lead)
    @lead = lead
    mg_client = Mailgun::Client.new ENV['mailgun_key']
    message_params = {:from => 'staff@noctiflow.com',
                      :to => 'jmacdonald404@gmail.com', #lead.email when mailgun plan setup
                      :subject => 'Contact Form',
                      :text => lead.first_name}
    mg_client.send_message ENV['mailgun_url'], message_params
  end
end
