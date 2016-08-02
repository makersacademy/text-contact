require 'rake'
require './lib/contact'

desc "This sends texts from contacts.csv"
task :send_messages do
  message = "Hey %{name} - did you get this? "
  file = "contacts.csv"
  Contact.send_all(message, file)
puts "Thank you - your messages have been sent!"
end
