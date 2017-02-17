#extract words from dictionary
words = []
File.open("dictionary_one.txt", "r") do |f|
  f.each_line do |line|
    words<<line.strip
  end
  words
end

#iterate over each word
words.each do |word|
  word.chars.each_cons(4) do |t|
    puts "#{t.join("")} #{word}"
  end
end

#alphabetize, remove duplicate sequences
