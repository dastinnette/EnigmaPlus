require 'pry'

class FileIO
  attr_reader :input, :output

  def initialize (input = ARGV[0], output = ARGV[1])
    @input = input
    @output = output
  end

  def read_input
    filename = File.open(input, "r")
    @input = filename.read
  end

  def write_output(results)
    file = File.open(output, "w")
    file.write(results)
    file.close
  end

end
