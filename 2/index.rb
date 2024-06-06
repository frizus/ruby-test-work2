require "./func"

puts "Задача: можно ли строку str представить в последовательность разделенных пробелом слов, содержащихся в словаре dict\n"
puts "Переданы аргументы: #{ARGV.join(" ")}\n" unless ARGV.empty?

def error(failed, error)
  return unless failed

  puts "ruby #{File.basename(__FILE__)} str dict1 dictn"

  raise ArgumentError, error
end
error(ARGV.size < 2, "Передайте минимум 2 аргумента")
ARGV.each { |arg| error(arg.empty?, "Нельзя передавать пустой аргумент") }

puts "Результат: #{task(ARGV[0], ARGV[1..])}"