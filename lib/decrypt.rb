require_relative 'offset_calculator'
require_relative 'encrypt'

class Decrypt

  # if encrypt = true, add rotations.
  # if encrypt = false, subtract rotations

  attr_reader   :rotations, :file_io

  def initialize
    @file_io = FileIO.new
  end

  def get_rotations
    calc = OffsetCalculator.new('12345','280715')
    @rotations = calc.rotations.-@
  end

  def characters
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", "," ]
  end

  def encrypt_letter_a(letter)
    a_rotated_characters = characters.rotate(rotations[0])
    Hash[characters.zip(a_rotated_characters)][letter]
  end

  def encrypt_letter_b(letter)
    b_rotated_characters = characters.rotate(rotations[1])
    Hash[characters.zip(b_rotated_characters)][letter]
  end

  def encrypt_letter_c(letter)
    c_rotated_characters = characters.rotate(rotations[2])
    Hash[characters.zip(c_rotated_characters)][letter]
  end

  def encrypt_letter_d(letter)
    d_rotated_characters = characters.rotate(rotations[3])
    Hash[characters.zip(d_rotated_characters)][letter]
  end

  def encrypt(message)
    i = 0
    encrypted_arr = []
    message_to_encrypt = message.downcase
    while i < message_to_encrypt.length
      if i % 4 == 0 || i == 0
        encrypted_arr << encrypt_letter_a(message_to_encrypt[i])
      elsif i % 4 == 1 || i == 1
        encrypted_arr << encrypt_letter_b(message_to_encrypt[i])
      elsif i % 4 == 2 || i == 2
        encrypted_arr << encrypt_letter_c(message_to_encrypt[i])
      elsif i % 4 == 3 || i == 3
        encrypted_arr << encrypt_letter_d(message_to_encrypt[i])
      end
      i += 1
      encrypted_input = encrypted_arr.join
    end
    encrypted_input
  end

end

if __FILE__ == $0
  # e = Encryptor.new
  # e.get_rotations
  # encrypted = e.encrypt("This is my file to encrypt. It is a secret message that you will never be able to read. That is too bad.")

d = Decryptor.new
d.get_rotations
d.decrypt("k3sh142zdhh7,7ozk h6ey1ngciz,ch jtkzj0mg8chb8b22 0hi.w3zp 4zn4va19ok8ah38tk3c0hift164zizk3ki142zk yz5wn0")
end