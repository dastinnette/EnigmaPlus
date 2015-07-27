require 'pry'                         # => true
require_relative 'offset_calculator'  # => true

class Encrypt


end  # => nil



if __FILE__ == $0           # => true
key = OffsetCalculator.new  # => #<OffsetCalculator:0x007f90da8a50a8 @key=nil, @offset=nil>
p key.get_key               # => "64573"
p key.rot_a                 # => "64"
p key.rot_b                 # => "45"
p key.rot_c                 # => "57"
p key.rot_d                 # => "73"

offset = OffsetCalculator.new  # => #<OffsetCalculator:0x007f90da8a41d0 @key=nil, @offset=nil>
p offset.get_offset            # => "1225"
p offset.off_a                 # => "1"
p offset.off_b                 # => "2"
p offset.off_c                 # => "2"
p offset.off_d                 # => "5"
end                            # => "5"

# >> "64573"
# >> "64"
# >> "45"
# >> "57"
# >> "73"
# >> "1225"
# >> "1"
# >> "2"
# >> "2"
# >> "5"
