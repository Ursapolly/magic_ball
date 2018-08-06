if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

current_path = File.dirname(__FILE__)
greetings_path = File.new(current_path + '/data/greetings.txt', 'r:UTF-8')
greetings = greetings_path.readlines.sample

answers_path = File.new(current_path + '/data/answers.txt', 'r:UTF-8')
answers = answers_path.readlines.sample

puts greetings
sleep 1
puts answers