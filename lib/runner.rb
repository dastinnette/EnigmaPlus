require_relative 'offset_calculator'
require_relative 'file_io'
require_relative 'encrypt'
# use key generator from here to generate and output valid key
# create instance of offset calculator. (takes date and key)
# write tests here? for date, key, rotations??
# create new encryptor in runner (needs files and rotations)
# output string: "Created #{ARGV[1]} with key #{key} and date #{date}."
#

class Runner




end

def initialize(key = nil, date = nil)
  @date    = date
  @key     = key
  @file_io = FileIO.new
  @calc    = OffsetCalculator.new(key, date)
end

def get_rotations
  @rotations = calc.rotations
end

if __FILE__ == $0
    file_io = FileIO.new
    message = file_io.message
    encryptor = Encrypt.new('12345', 280715)
    encryptor.get_rotations
    file_io.output(encryptor.encrypt(message))
    puts encryptor.print_message
end
