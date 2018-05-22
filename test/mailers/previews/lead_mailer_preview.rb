# Preview all emails at http://localhost:3000/rails/mailers/lead_mailer
class LeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lead_mailer/new_lead_notification
  def new_lead_notification
    LeadMailer.new_lead_notification
  end

end
