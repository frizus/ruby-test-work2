require "./func"

puts "Переданы аргументы: #{ARGV.join(" ")}"

if ARGV.empty? || ARGV.size < 2
  puts "ruby index.rb count to"
  raise ArgumentError, "Передайте 2 целочисленных значения"
end

count = ARGV[0].to_i
to = ARGV[1].to_i
raise ArgumentError, "count (#{count}) должно быть целочисленным значением" if count.to_s != ARGV[0]
raise ArgumentError, "to (#{to}) должно быть целочисленным значением" if to.to_s != ARGV[1]
raise ArgumentError, "Верхняя граница диапазона должна быть больше 0 (#{to})" unless to > 0
raise ArgumentError, "Количество случайных элементов (#{count}) не может быть больше диапазона [0, #{to})" if count > to
raise ArgumentError, "Количество случайных элементов (#{to}) не может быть меньше 1" if count < 1

output(generate(count, to))