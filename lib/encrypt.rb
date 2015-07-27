require 'pry'
require_relative 'encryptor'

class Encrypt

  def encrypt_file(filename, rotation)
      # Create the file handle to the input file
      filename = File.open("message.txt", "r")
      # Read the text of the input file
      file_read = filename.read
      # Encrypt the text
      encrypted = encrypt(file_read, rotation)
      # Create a name for the output file
      encrypted_file = "secret.txt.encrypted"
      # Create an output file handle
      output = File.open("secret.txt.encrypted", "w")
      # Write out the text
      output.write(encrypted)
      # Close the file
      output.close
    end

end



if __FILE__ == $0
key = OffsetCalculator.new
p key.get_key
p key.rot_a
p key.rot_b
p key.rot_c
p key.rot_d

offset = OffsetCalculator.new
p offset.get_offset
p offset.off_a
p offset.off_b
p offset.off_c
p offset.off_d
end
