class Board
#à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
#Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement. 
#Il faut les lui attribuer sous forme d'un array ou d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier 
#facilement si on arrive au 9ème coup sans vainqueur.
#Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : 
#il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison des BoardCases si la partie est finie 
#(= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

  attr_accessor :board_cases

  def initialize
    @board = Array.new(3) { Array.new(3) } # Crée un tableau 3x3 pour le plateau.
    create_board
  end

  def create_board
    letters = ["a", "b", "c"]
    numbers = ["1", "2", "3"]

    # Remplissez le tableau avec des instances de BoardCase et attribuez les positions.
    numbers.each_with_index do |num, i|
      letters.each_with_index do |letter, j|
        @board[i][j] = BoardCase.new("#{letter}#{num}")
      end
    end
  end

  def display_board
    puts "  1   2   3"
    puts "a #{@board[0][0].state} | #{@board[0][1].state} | #{@board[0][2].state}"
    puts "  ---------"
    puts "b #{@board[1][0].state} | #{@board[1][1].state} | #{@board[1][2].state}"
    puts "  ---------"
    puts "c #{@board[2][0].state} | #{@board[2][1].state} | #{@board[2][2].state}"
  end
end

