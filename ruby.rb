puts "Ingresa algo: "
text = gets.chomp

puts "Redacta algo: "
redact = gets.chomp

words = text.split (" ")

words.each do |word|
   if words != redact
       print word +" "
   else
    print "REDACTED"
end
end

