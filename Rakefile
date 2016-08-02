require 'rake'
require './lib/contact'

desc "This sends texts from contacts.csv"
task :send_messages do
  message = "Hey %{name}"
  file = "contacts.csv"
  Contact.send_all(message, file)
end
