require 'optparse'

options = OptionParser.new do |opts|
  opts.banner = 'Usage: alpha_opt.rb [options]'

  alphabets = ('a'..'z').to_a

  alphabets.each do |alphabet|
    opts.on("-#{alphabet}", "Option #{alphabet.upcase}") do |letter|
    end
  end
end

options.parse!

puts options
