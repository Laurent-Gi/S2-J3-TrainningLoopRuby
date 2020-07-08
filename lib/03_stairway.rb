# ================================= #
#                                   #
# Exercice n°03 en pair learning -  #
#                                   #
# Authors : Laurent SAIVES          #
#                &                  #
#           Régis PERDREAU          #
#                                   #
# ================================= #

# 2.4. Programme 3 : 6ème sans ascenseur

# Une gentille personne va devoir monter 10 marches en fonction d'un jet de dé
# Début de partie : Le joueur est tout en bas d'un escalier à 10 marches.
# A chaque tour il va lancer un dé :
#
# 5 ou 6 : monte une marche + le dire (tu es à la marche n°X)
# 1 :descend d'une marche + le dire (tu es à la marche n°X)
# 2, 3, ou 4 : rien ne se passe (tu n'as pas bougé, tu restes à la marche n°X)

def starting_point
  puts "Rentre ton prénom pour démarrer une partie !"
  print "> "
  user_name = gets.chomp.to_s

  puts "Bonjour #{user_name}, tu es en bas de l'escalier"
  puts "Appuie sur entrée pour commencer tes parties"
  gets
end

def dice_effect(dice_result,step_status)
  if dice_result >= 5     # 5 ou 6
    print "Tu montes d'une marche. "
    step_status += 1
  elsif dice_result <= 1  # 1
    if step_status > 0
      step_status -= 1
      print "Tu descends d'une marche. "
    end
  else             # 2, 3, 4
    print "Tu restes sur place. "
  end
  puts "Tu te trouves maintenant à la marche n° #{step_status}"
  return step_status
end

def dice_game
  # 6 faces : rand(6) entre 0 et 5 .... donc + 1
  return rand(6) + 1
end

def perform

  # Initialisation au niveau du sol
  step_status = 0
  number_of_rounds = 0

  while step_status < 10
    # lance un dé - 1 à 6
    dice_result = dice_game
    number_of_rounds += 1

    # Evolution de la situation
    step_status = dice_effect(dice_result,step_status)
  end

  joy_message(number_of_rounds)

  return number_of_rounds
end

def joy_message(number)
  print "\n\nBravo !!!!\nTu as enfin monté l'escalier !!!\nPas trop fatigué ?\nTout celà en #{number} jets de dés\n\n"
end


def average_finish_time(nb_statistic)
  # On initialise le tableau des résultats nombre de tours pour gravir l'escalier
  tab_number_of_rounds = []

  (1..nb_statistic).each do |_variable|
    tab_number_of_rounds << perform    
  end

  average_rounds = tab_number_of_rounds.sum.to_f / tab_number_of_rounds.size
  return average_rounds

end


# Intro, et bonjour
starting_point

# Lancement du jeu !!!
# perform              # pour une seule partie

# Lancement des statistiques sur 100 jeux
average_rounds = average_finish_time(100)
puts  "Il faut une moyenne de #{average_rounds} lancés pour gravir les 10 marches !"


