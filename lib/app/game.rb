class Game
  def initialize
    @board = Board.new # Crée un plateau de jeu
    @current_player = 'X' # Initialise le joueur actuel
    
  end

  def play
    valid_ids = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

    loop do
      @board.display_board
      puts "C'est au tour du joueur #{@current_player}"
      puts "Où veux-tu jouer ?"
      print "> "
      board_case_id = gets.chomp

      if valid_ids.include?(board_case_id)
        row, col = @board.convert_to_row_col(board_case_id)
        if @board[row][col].state != 'X' && @board[row][col].state != 'O'
          @board[row][col].state = @current_player
          if @current_player == 'X' #(si le joueur actuel est X, on passe à O)
            @current_player = 'O'
          else
            @current_player = 'X'
          end
        else
          puts "Cette case est occupée, choisis une autre case."
        end
      else
        puts "Choisis une case parmi les options valides : a1, a2, a3, b1, b2, b3, c1, c2, c3."
      end

    end
  end

end


#cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.
#Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes 
#comme "quel joueur doit jouer ?", "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
#Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), s'occupe de finir la partie si un 
#joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.







  



