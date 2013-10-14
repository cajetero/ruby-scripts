movies = { Batman: 4,
        Spiderman: 3,
        Thor: 5,
        Hulk: 2.5
    }

puts "Elije una opcion: "
puts "Add, Update, Display, Delete"
choice = gets.chomp

case choice

when "add"
    puts "Escribe el nombre: "
    title = gets.chomp
    puts "Escribe el rating? (numero 0 a 4.)"
    rating = gets.chomp
    
        if movies[title.to_sym].nil?
            movies[title.intern] = rating.to_i
            puts "#{title} ha sido agregado con un rating de #{rating}."
            #movies["#{title}"]="#{rating}"
        else
            puts "La pelicula ya existe su rating es #{movies[title.to_sym]}."
        end
        
when "update"
    puts "Escribe el nombre a modificar: "
    new = gets.chomp
    if new.to_sym == movies[x.to_sym] then
    puts "Escribe el nuevo nombre: "
    title = gets.chomp
    puts "Escribe el nuevo rating? (numero 0 a 4.)"
    rating = gets.chomp
    
        if movies[title.to_sym].nil?
            movies[title.intern] = rating.to_i
            puts "#{title} ha sido modificado con un rating de #{rating}."
            #movies["#{title}"]="#{rating}"
        else
            puts "La pelicula no existe su rating es #{movies[title.to_sym]}."
        end
        else 
            puts "blabak"
    end

when "display"
    puts "Estas son las peliculas registradas"
    movies.each do |movie,rating|
    puts "#{movie}: #{rating}"
    end
    
when "delete"
    puts "Escriba el nombre de la pelicula a eliminar: "
   title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
  
else
    puts "Error!"
end
