require 'csv'
require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class Contact
  def initialize(details, sms_client = nil)
    @details = details
    @client = sms_client || Twilio::REST::Client.new(ENV["twilio_account_sid"], ENV["twilio_auth_token"]).messages
  end

  def self.send_all(message, file, sms_client = nil)
    CSV.foreach(file, headers: true)
      .map{ |details| new(details, sms_client) }
      .each{ |contact| contact.text(message) }
  end

  def text(message)
    @client.create(
      from: ENV["from_number"],
      to: @details["Number"],
      body: message % { name: @details["Name"] }
    )
  end
end
