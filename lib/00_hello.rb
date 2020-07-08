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
# 2.1.2 Coucou toi (ajout first-name)
# 2.1.3 Le combo

def say_hello(name)
  puts "Hello #{name}!"
end

def ask_first_name
  puts "Quel est votre prénom ?"
  print "> "
  return gets.chomp.to_s 
end

# first_name = ask_first_name

say_hello(ask_first_name)
