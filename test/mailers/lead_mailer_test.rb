require 'test_helper'

class LeadMailerTest < ActionMailer::TestCase
  test "new_lead_notification" do
    mail = LeadMailer.new_lead_notification
    assert_equal "New lead notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
