dict = {
    'cat' => ['gato','gata'],
    'dog' => ['perro', 'perra'],
    'girl' => ['chica','chico']
}

print "Type a word to translate: "
input = gets.chomp

puts "Translation to Spanish: #{dict[input].join(", ")}"