class LeadMailer < ApplicationMailer
  default from: "noreply@jameswangcrm.ca"
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

    # mg_client = Mailgun::Client.new ENV['mailgun_key']
    # message_params = {:from => 'noctiflow@gmail.com',
    #                   # :to => 'jmacdonald404@gmail.com', #lead.email when mailgun plan setup
    #                   :to => @lead.email,
    #                   # :bcc => 'noctiflow@gmail.com',
    #                   :subject => 'Contact Form',
    #                   :text => "Thanks for signing up #{lead.first_name}! We are currently reviewing your information regarding real estate in #{lead.cityname}, and will be in touch with you soon! this was generated from #{lead.source}. now to add you to the mailing list",
    #                   "o:deliverytime" => 30.seconds.from_now.rfc2822
    #                   }
    # mg_client.send_message ENV['mailgun_url'], message_params


    mail({
             :from    => "noreply@jameswangcrm.ca",
             :to      => @lead.email,
             :subject => "Your information has been sent.",
             :text    => "Thank you for contacting us. We will be in touch with you shortly."
         })
  end
end
