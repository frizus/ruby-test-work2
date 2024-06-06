require "./func"

puts "Переданы аргументы: #{ARGV.join(" ")}"

def error(error)
  puts "ruby #{File.basename(__FILE__)} count to"
  raise ArgumentError, error
end

error("Передайте 2 целочисленных значения") if ARGV.empty? || ARGV.size < 2
count = ARGV[0].to_i
to = ARGV[1].to_i
error(count.to_s != ARGV[0], "count (#{count}) должно быть целочисленным значением") if count.to_s != ARGV[0]
error(to.to_s != ARGV[1], "to (#{to}) должно быть целочисленным значением") if to.to_s != ARGV[1]
error(count > to, "Количество случайных элементов (#{count}) не может быть больше диапазона [0, #{to})") if
error(count < 1, "Количество случайных элементов (#{to}) не может быть меньше 1") if

task(count, to)