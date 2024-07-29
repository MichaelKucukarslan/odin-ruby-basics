require_relative 'caesar_cipher'

puts "What phrase would you like to code?"
user_text = gets.chomp

puts "What is your shift factor?"
user_shift = nil

is_user_shift_not_valid = true

while is_user_shift_not_valid
  user_shift = gets.chomp
  if user_shift.to_i.to_s == user_shift
    puts "Int"
    is_user_shift_not_valid = false
    user_shift = user_shift.to_i
  else
    puts "Needs to be and integer. Please try again"
    end
end

encrypted_text = caesar_cipher(user_text, user_shift)
puts "Original: #{user_text}"
puts "Encrypted: #{encrypted_text}"
