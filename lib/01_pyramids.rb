# ================================= #
#                                   #
# Exercice n°01 en pair learning -  #
#                                   #
# Authors : Laurent SAIVES          #
#                &                  #
#           Régis PERDREAU          #
#                                   #
# ================================= #

# 2.2. Programme 1 : vacances en Égypte

# Reprends ton deuxième exercice de la pyramide en l'encapsulant dans une méthode half_pyramid

def ask_nb_floors(message="")
  message=message.to_s
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?" + message
  print "> "
  return gets.chomp.to_i
end

def half_pyramid(number_of_floors)
  n=0
  (puts "#"*(n+1) ; n=n+1) while n < number_of_floors
end

def full_pyramid(number_of_floors)

  (1..number_of_floors).each do | i |

    print " " * (number_of_floors - i)
    print "#" * (2*i-1)
    print " " * (number_of_floors - i)
    print "\n" # "|\n" pour marquer la fin

  end

end 

def wtf_pyramid(number_of_floors)

  return if number_of_floors.even?

  nb_etage_demi_pyramide = number_of_floors / 2

  (1..(nb_etage_demi_pyramide+1)).each do | i |

    print " " * (number_of_floors - i)
    print "#" * (2*i-1)
    print " " * (number_of_floors - i)
    print "\n" # "|\n" pour marquer la fin
  end

  nb_etage_demi_pyramide.downto(1) do | i |
    print " " * (number_of_floors - i)
    print "#" * (2*i-1)
    print " " * (number_of_floors - i)
    print "\n" # "|\n" pour marquer la fin
  end

end 


def wtf_pyramid_2(number_of_floors)

  return if number_of_floors.even?

  nb_etage_demi_pyramide = number_of_floors / 2

  nb_caracteres_base = (nb_etage_demi_pyramide)*2+1

  (1..(nb_etage_demi_pyramide+1)).each do | i |

    chaine="#"* (2*i -1)
    puts chaine.center(nb_caracteres_base)
  end

  nb_etage_demi_pyramide.downto(1) do | i |
    chaine="#"* (2*i -1)
    puts chaine.center(nb_caracteres_base)
  end

end 

# half_pyramid(number_of_floors = ask_nb_floors)

# full_pyramid(number_of_floors = ask_nb_floors)

wtf_pyramid_2(number_of_floors = ask_nb_floors(" (choisis un nombre impair)"))
