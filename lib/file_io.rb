require 'pry'

class FileIO

  def message(filename = ARGV[0])
    File.open(filename, "r").read
  end

  def output(results, filename = ARGV[1])
    file = File.open(filename, "w")
    file.write(results)
    file.close
  end

  def print_message(key, date)
    "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
  end
end
