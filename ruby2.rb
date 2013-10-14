puts "escribe algo: "
text = gets.chomp


words = text.split " "
frequencies = Hash.new(0)

words.each do |word|
    frequencies[word] +=1
end

frequencies = frequencies.sort_by{ |a, b| b}
frequencies.reverse!

frequencies.each do |word, frequency|
    puts word + " " + frequency.to_s
end
