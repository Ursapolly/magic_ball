#encoding: utf-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

current_path = File.dirname(__FILE__)
greetings_path = current_path + '/data/greetings.txt'
answers_path = current_path + '/data/answers.txt'

greetings = File.new(greetings_path, 'r:UTF-8')
answers = File.new(answers_path, 'r:UTF-8')

puts greetings.readlines.sample
sleep 1
puts answers.readlines.sample