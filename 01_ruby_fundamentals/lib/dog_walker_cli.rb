def start_cli
  puts "Hi there! Welcome to the Dog Walker CLI!".cyan
end
#   DELIVERABLE 1
# define a method `print_menu_options` which outlines the user's choices. The choices will be displayed as a numbered list like so:
#   1. List all dogs puts gives line break, print doesnt 
#   2. Add a dog
#   At any time, type "exit" to leave the program

def print_menu_option
  puts "1. List all dogs"
  puts "2. Add a dog"
  puts "At any time, type 'exit' to leave the program"
end

#   DELIVERABLE 2 
# define a method `ask_for_input` which prompts the user for input
# if the user types "exit" we'll print a message thanking them for using the CLI and invoke exit to terminate the program
# otherwise, return whatever the user typed in

def ask_for_input
  input = gets.chomp
  if input == "exit"
    puts "Thank you for using the Dog Walker Cli! Have a nice day!"
    exit
  else
    input
  end
end

# define a `print_dog` method that accepts a dog hash as a parameter and prints out the dog's details that looks like this:
=begin
  Lennon Snow
  Age: Almost 2
  Breed: Pomeranian
  Image URL: https://res.cloudinary.com/dnocv6uwb/image/upload/v1609370267/dakota-and-lennon-square-compressed_hoenfo.jpg
=end

def print_dog(dog_hash)
  puts
  puts "#{dog_hash[:name]}".green
  puts "  Age: #{dog_hash[:age]}"
  puts "  Breed: #{dog_hash[:breed]}"
  puts "  Image URL: #{dog_hash[:image_url]}"
  puts
end


# define a method `list_dogs` that will iterate over an array of dog hashes and call print_dog on each one.

def list_dogs(dogs)
  dogs.each do |dog_hash|
    print_dog(dog_hash)
  end
  nil
end

# define an `add_dog` method which accepts an array of dog hashes as an argument. It should:
# ask the user for input of the dog's name, age, breed and image_url. 
# Take this information and put it into a hash
# add the hash to the dogs array passed as an argument
# print the newly added dog

def add_dog(dogs)
  print "What's the dogs name?" 
  name = ask_for_input
  print "What's the dogs age?" 
  age = ask_for_input
  print "What's the dogs breed?" 
  breed = ask_for_input
  print "What's the dogs image_url?" 
  image_url = ask_for_input
  dog_hash = {
    name: name,	
    age: age,
    breed: breed,
    image_url: image_url
  }
  dogs << dog_hash
  print_dog(dog_hash)
end

# define a method `handle_choice` which will take a `choice` as a parameter and handle it in the appropriate way based on the menu option that was chosen

def handle_choice(choice)
  if choice == "1"
    list_dogs($dogs)
  elsif choice == "2"
    add_dog($dogs)
  else
    "Whoops, I didnt understand, sorry"
  end
end




