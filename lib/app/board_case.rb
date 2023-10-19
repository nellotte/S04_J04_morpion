class BoardCase
#chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau.
#Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.) et son contenu 
#(Soit elle est vide, soit elle a comme valeur le string "x", soit elle a comme valeur le string "o").

  attr_accessor :state, :position

  def initialize(position)
    @state = " " # Au démarrage, la case est vide, (X, O ou vide)
    @position = position
  end


end