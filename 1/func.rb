def generate(count, to)
  values = []

  loop do
    value = rand(to)
    next if values.include? value
    values << value
    break if values.length == count
  end

  values.sort!
end

def output(values)
  values.each { |value| puts value }
end