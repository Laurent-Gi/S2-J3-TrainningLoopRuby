

def full_pyramide (number_of_floors)
  number_of_floors.times do | i |
    print " " * (number_of_floors-(i+1)) 
    print "#" * (i+1)
    puts "#" * (i)
  end
end


puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
number_of_floors = gets.chomp.to_i
full_pyramide(number_of_floors)