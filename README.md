Text Contact - the [Makers Academy](http://www.makersacademy.com) little helper script to send out text messages to students.

# Setup
 - Clone this repo down
 - Run `bundle`
 - Ensure you have a `contacts.csv` in the root directory. The column headers should be "Name" & "Number"
 - Grab the ENV variables from Lastpass

# Use
 - Prep your contacts.csv file
 - Edit the Rakefile with your custom text message.
 - You can interpolate the name with `%{name}`
 - Double check the numbers and names are correct
 - Run `rake send_messages`
 - You're done!
