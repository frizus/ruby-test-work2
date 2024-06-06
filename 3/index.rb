require "optparse"
require "./func"

options = {
  size: 2
}
opt_parser = OptionParser.new do |opts|
  opts.on("-v", "-visual [HEIGHT]", Integer) do |v|
    options[:size] = v
  end
end
opt_parser.parse!

puts "Задача: вывести число псевдографикой\n"
puts "Переданы аргументы: #{ARGV.join(" ")}\n" unless ARGV.empty?
puts "Опции: #{options}"

def error(failed, error)
  return unless failed

  puts "ruby #{File.basename(__FILE__)} [-v height] number"

  raise ArgumentError, error
end
error(ARGV.size < 1, "Передайте 1 аргумент")

number = ARGV[0].to_i
error(number.to_s != ARGV[0], "number (#{ARGV[0]}) должен быть целочисленным значением")
error(options[:size] < 1, "-v [NUMBER] должен быть больше нуля")

puts "#{task(ARGV[0], options[:size])}"