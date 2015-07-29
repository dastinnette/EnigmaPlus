require_relative "offset_calculator"
require_relative "file_io"

class Encrypt

  # if encrypt = true, add rotations.
  # if encrypt = false, subtract rotations

  attr_reader :a_rotation, :b_rotation, :c_rotation, :d_rotation

  def initialize(a_rotation = 0, b_rotation = 0, c_rotation = 0, d_rotation = 0)
    @a_rotation = a_rotation
    @b_rotation = b_rotation
    @c_rotation = c_rotation
    @d_rotation = d_rotation
  end

  def get_rotations
    calc = OffsetCalculator.new
    calc.get_key
    calc.get_offset
    @a_rotation = calc.a_rotation
    @b_rotation = calc.b_rotation
    @c_rotation = calc.c_rotation
    @d_rotation = calc.d_rotation
  end

  def characters
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", "," ]
  end

  def a_cipher
    characters
    a_rotated_characters = characters.rotate(a_rotation)
    Hash[characters.zip(a_rotated_characters)]
  end

  def b_cipher
    characters
    b_rotated_characters = characters.rotate(b_rotation)
    Hash[characters.zip(b_rotated_characters)]
  end

  def c_cipher
    characters
    c_rotated_characters = characters.rotate(c_rotation)
    Hash[characters.zip(c_rotated_characters)]
  end

  def d_cipher
    characters
    d_rotated_characters = characters.rotate(d_rotation)
    Hash[characters.zip(d_rotated_characters)]
  end

  def encrypt_letter_a(letter)
    cipher_for_rotation = a_cipher
    cipher_for_rotation[letter]
  end

  def encrypt_letter_b(letter)
    cipher_for_rotation = b_cipher
    cipher_for_rotation[letter]
  end

  def encrypt_letter_c(letter)
    cipher_for_rotation = c_cipher
    cipher_for_rotation[letter]
  end

  def encrypt_letter_d(letter)
    cipher_for_rotation = d_cipher
    cipher_for_rotation[letter]
  end

  # def input
  #   file_io = FileIO.new
  #   @input = file_io.read_input.downcase
  # end

  def encrypt
  i = 0
  encrypted_arr = []
  while i < input.length
    if i % 4 == 0 || i == 0
      encrypted_arr << encrypt_letter_a(input[i])
    elsif i % 4 == 1 || i == 1
      encrypted_arr << encrypt_letter_b(input[i])
    elsif i % 4 == 2 || i == 2
      encrypted_arr << encrypt_letter_c(input[i])
    elsif i % 4 == 3 || i == 3
      encrypted_arr << encrypt_letter_d(input[i])
    end
    i += 1
    encrypted_input = encrypted_arr.join
  end
   file_io.write_output(encrypted_input)
  end

end

if __FILE__ == $0
e = Encrypt.new
input = FileIO.new.read_input
e.get_rotations
e.encrypt
end
