def task(count, to)
  output(generate(count, to))
  #output(generate_from_a(count, to))
end

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

def generate_from_a(count, to)
  (0..to - 1).to_a.sample(count).sort!
end

def output(values)
  values.each { |value| puts value }
end