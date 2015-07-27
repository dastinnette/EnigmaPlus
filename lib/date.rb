class Date

  def generate_date
    Time.now.strftime("%d%m%y")
  end

  def find_offset
    squared = generate_date.to_i**2
    squared.to_s[-4..-1]
  end

end
