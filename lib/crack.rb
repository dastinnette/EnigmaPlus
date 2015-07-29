# read in encrypted msg(fileio ARGV[0])
# reverse encrypted message
# pull 1st 4 chars out of reverse encrypted message
# get indexes relative to character map of above characters
# "end..".reverse
# "..dn" get indexes relative to character map of unencrypted message
# subtract indexes to get (key + offset)
# reverse message
# use modulo to figure out where key actually begins (ie find 1st 4 #s of key offset)
# reverse it
# subtract offsets

# Find length of string, %4, remainder = A B C D shift
# Find distance on character map for each A B C D
# Difference equals rotation for each A B C D
# Rotation - 1 2 2 5 = key
# Run result through decrypt function

# Don't need to mess with reversing

require_relative 'file_io'

class Crack

  attr_reader :message, :file_io

  def initialize
    @file_io = FileIO.new
    @message = file_io.message("crack_test.txt")
  end

  def message_length
    message.chomp.length
  end

  def find_modulo
    message_length%4
  end

  def final_rotation
    case find_modulo
    when 0
      "D"
    when 1
      "A"
    when 2
      "B"
    when 3
      "C"
    end
  end



end
