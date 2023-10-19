class Board

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
    ('a'..'c').each do |row|
      print "#{row} "
      (1..3).each do |col|
        case_id = "#{row}#{col}"
        symbol = get_symbol(case_id)
        print " #{symbol} |"
      end
      puts "\n  ---------"
    end
  end

  def get_symbol(case_id)
    row, col = convert_to_row_col(case_id)
    @board[row][col].state
  end

  def convert_to_row_col(board_case_id)
    row = 0
    col = 0
    case board_case_id
    when 'a1'
      row = 0
      col = 0
    when 'a2'
      row = 0
      col = 1
    when 'a3'
      row = 0
      col = 2
    when 'b1'
      row = 1
      col = 0
    when 'b2'
      row = 1
      col = 1
    when 'b3'
      row = 1
      col = 2
    when 'c1'
      row = 2
      col = 0
    when 'c2'
      row = 2
      col = 1
    when 'c3'
      row = 2
      col = 2
    end
  
    [row, col]
  end
  

end
#à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
#Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement. 
#Il faut les lui attribuer sous forme d'un array ou d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier 
#facilement si on arrive au 9ème coup sans vainqueur.
#Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : 
#il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison des BoardCases si la partie est finie 
#(= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

