require 'pry-byebug'

def caesar_cipher(input, shift_factor)
  return p 'error' unless shift_factor.is_a? Integer

  input_array = input.split('')

  ascii_array = input_array.map { |char| char.ord }

  encoded = ascii_array.map do |char|
    if char.between?(65, 90)
      char.between?(65, 90) ? char - shift_factor : char - shift_factor + 26
    elsif char.between?(97, 122)
      char.between?(97, 122) ? char - shift_factor : char - shift_factor + 26
    end
  end
end

p caesar_cipher('Hello', 3)
