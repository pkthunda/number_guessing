def random_number()
  return rand(0..100)
end

def user_input
  gets.chomp.to_i
end

def greeting
  puts "Can you guess the number?"
  puts "It ranges between 1 and 100."
end

greeting

count = 0
win = false
guess_array = []
guess = ""

number = random_number
 #puts number

while count < 5
  puts "You're on round #{count+1}"
  guess = user_input
  if guess_array.include? guess
    puts "Ya doubled up ya dumby!"
  elsif guess > number
    puts "Try again, you're too high."
  elsif guess < number
    puts "Try again billy bob, you've got friends in low places."
  elsif guess == number
    puts "ADRIANNEEEE (ROCKY WINS) YOU'RE DONE."
    count = 5
  end
  count += 1
  guess_array << guess
end
