class Player
#Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").
#2 instances à prévoir (player1 et player2)


  def initialize(@name, @status = not_my_turn)
    @name = name
    @status = status  #my_turn / #not_my_turn
    @symbole = symbole ??
  end

  def ask_player_name
    print "Entrez le nom du joueur 1: "
    player1_name = gets.chomp
    print "Entrez le nom du joueur 2: "
    player2_name = gets.chomp

    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
  end

end