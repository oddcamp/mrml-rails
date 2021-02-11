require "mrml/rails"
require "spec_helper"

RSpec.describe Mrml::Rails, type: :mailer do
  describe '#normal_email' do
    let!(:mail) { MrmlTestMailer.normal_email('Random User').deliver_now }

    it "renders the headers" do
      expect(ActionMailer::Base.deliveries).to_not be_empty
  
      # Test the body of the sent email contains what we expect it to
      expect(mail.from).to eq(["example@mailer.com"])
      expect(mail.to).to eq(["user@example.org"])
  
      expect(mail.subject).to eq("Welcome!")
    end
  
    it "renders the body" do
      expect(mail.body).not_to match(%r{</?mj.+?>})
      expect(mail.body).to match(/<body>/)
      expect(mail.body).to match(/Welcome, Random User!/)
      expect(mail.body).to match(%r{<h2>We inform you about something</h2>})
      expect(mail.body).to match(%r{<a href="https://www.example.com">this link</a>})
      expect(mail.body).to match(/We inform you about something/)
    end
  end
end
