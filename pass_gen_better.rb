a = ["!","@","#","$","%","^","&","*"].sample(12)
b = [*('a'..'z')].sample(12)
c = [*('0'..'9')].sample(12)
d = [*('A'..'Z')].sample(12)
e = (a) + (b) + (c) + (d)
f = e.sample(12) #generates a 12 character password containing random sequence from arrays
g = "Your password: "
h = f.join #converts final array into a string
puts "URL?"
url = gets.chomp
puts "Username?"
user_name = gets.chomp
puts (g) + (h) #confirms that password was generated.
configFile = File.open("random_passwords_better.txt", "a") #opens file. "a" adds to file without deleting anything
configFile.write("URL: " + "#{url}")
configFile.write "\n" #creates new line in txt file.
configFile.write("Username: " + "#{user_name}") #writes variable username to file
configFile.write "\n" #creates a new line in txt file
configFile.write("Password: " + "#{h}") #writes variable generated_password to file.
configFile.write "\n" #creates new line in txt file.
configFile.close #closes the file
puts "file saved."#confirms process was complete without error
