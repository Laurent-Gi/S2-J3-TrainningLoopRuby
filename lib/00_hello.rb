# ================================= #
#                                   #
# Exercice n°01 en pair learning -  #
#                                   #
# Authors : Laurent SAIVES          #
#                &                  #
#           Régis PERDREAU          #
#                                   #
# ================================= #

# 2.1   Say Hello avec des Méthodes (Fonctions)

# 2.1.1 Dis bonjour

def say_hello(name)
  puts "Hello #{name}!"
end

puts "Quel est votre prénom ?"
print "> "
first_name = gets.chomp.to_s

say_hello(first_name)
