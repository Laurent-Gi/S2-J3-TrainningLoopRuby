def signup
  puts "Veuillez choisir un mot de passe"
  print "> "
  return gets.to_s
  # Pas de contrôle : ce qui est saisi sera une chaîne de caractère, éventuellement vide
end

def check_password(word_input,password)
  if word_input == password
    return true
  else
    puts "Votre mot de passe est erroné !"
    print "Essayez à nouveau "
    return false
  end
end

def login(password)
  puts "Veuillez rentrer votre mot de passe s'il-vous-plaît :"
  begin
    print "> "
    word_input = gets.to_s
  end until check_password(word_input,password)
  return true
end

def welcome_screen
  puts " - =" * 12
  puts " -                                             -"
  puts " -  Bienvenue dans votre section secrète !     -"
  puts " -                                             -"
  puts " - Le nouveau code secret est : TJZNGD598742   -"
  puts " -                                             -"
  puts " - = - = - R i e n   d ' a u t r e  - =- = - = -"
end


# Méthode principale sui regroupe les autres
def perform
  # 1/ On demande à l'utilisateur de définir son password
  password = signup

  # 2/ On demande maintenant à l'utilisateur d'entrer son password pour se 'loger'
  if login(password)
    # 3/ Ecran de bienvenue
    welcome_screen
  end

end

# Lancement du programme
perform
