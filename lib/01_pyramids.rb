

def half_pyramide (number_of_floors)
number_of_floors.times do | i |
  puts "#" * (i+1)
end


puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
number_of_floors = gets.chomp.to_i
half_pyramide(number_of_floors)