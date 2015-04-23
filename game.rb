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

def ending
  puts "You have no more turns. I'm sorry. Try again!"
end

greeting

count = 0
win = false
guess_array = []
guess = ""

number = random_number
 # puts number

while count < 5
  puts "You're on round #{count+1}. Submit your answer:"
  guess = user_input
  if guess_array.include? guess
    puts "Ya doubled up ya dumby!"
  elsif guess > number
    puts "Your number is too high."
  elsif guess < number
    puts "Your number is low."
  elsif guess == number
    puts "You did it! Can you do it again?"
  end
  guess_array << guess
  count += 1
  if count == 5
    guess = ending
  end
end
