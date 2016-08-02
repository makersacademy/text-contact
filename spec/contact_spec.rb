require "contact"

RSpec.describe Contact do

  describe 'contacting a CSV of Pipedrive leads' do
    it 'sends them a text message' do
      sms_client = spy(:sms_client)
      nikesh_data = message_data("Nikesh", "07890123456")
      leo_data = message_data("Leo", "+44780654321")

      Contact.send_all("Hey %{name}", "spec/support/test.csv", sms_client)

      expect(sms_client).to have_received(:create).with(nikesh_data)
      expect(sms_client).to have_received(:create).with(leo_data)
    end
  end

  def message_data(name, number)
    ({
      from: ENV["from_number"],
      to: number,
      body: "Hey #{name}"
    })
  end
end
