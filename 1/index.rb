require "./func"

def error(failed, error)
  return unless failed

  puts "ruby #{File.basename(__FILE__)} count to"

  raise ArgumentError, error
end

puts "Задача: вывести count отсортированных уникальных случайных чисел из диапазона [0, to)\n"
puts "Переданы аргументы: #{ARGV.join(" ")}\n" unless ARGV.empty?

error(ARGV.size < 2, "Передайте 2 целочисленных значения")
count = ARGV[0].to_i
to = ARGV[1].to_i
error(count.to_s != ARGV[0], "count (#{ARGV[0]}) должно быть целочисленным значением")
error(to.to_s != ARGV[1], "to (#{ARGV[1]}) должно быть целочисленным значением")
error(count > to, "Количество случайных элементов (#{count}) не может быть больше диапазона [0, #{to})")
error(count < 1, "Количество случайных элементов (#{to}) не может быть меньше 1")

task(count, to)