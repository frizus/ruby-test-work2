require "./func"

if ARGV.length > 0
  puts "Переданы аргументы: #{ARGV.join(" ")}"
else
  puts "Без аргументов"
end

def error(error)
  puts "Можно ли строку str представить в последовательность разделенных пробелом слов, содержащихся в словаре dict\n"
  puts "ruby #{File.basename(__FILE__)} str dict1 dictn"
  raise ArgumentError, error
end
error("Передайте минимум 2 аргумента") if ARGV.empty? || ARGV.size < 2
ARGV.each { |arg| error("Нельзя передавать пустой аргумент") if arg.empty? }

result = task(ARGV[0], ARGV[1..])
puts "Результат: #{result}"