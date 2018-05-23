require 'securerandom'
random_upcase_string_1 = SecureRandom.hex(2).upcase! #gets random numbers and letters
random_lowcase_string_1 = SecureRandom.hex(2)
random_upcase_string_2 = SecureRandom.hex(2).upcase!
char_array = ["!","@","#","$","%","^","&","*"].sample #gets random character from array
puts "URL?"
url = gets.chomp
puts "Username?"
user_name = gets.chomp
generated_password =  (random_upcase_string_1) + (random_lowcase_string_1) + (char_array) + (random_upcase_string_2)
login = (url) + (user_name) + (generated_password)
puts generated_password #confirms that password was generated.
configFile = File.open("random_passwords.txt", "a") #opens file. "a" adds to file without deleting anything
configFile.write("URL: " + "#{url}")
configFile.write "\n" #creates new line in txt file.
configFile.write("Username: " + "#{user_name}") #writes variable username to file
configFile.write "\n" #creates a new line in txt file
configFile.write("Password: " + "#{generated_password}") #writes variable generated_password to file.
configFile.write "\n" #creates new line in txt file.
configFile.close #closes the file
puts "file saved."#confirms process was complete without error
