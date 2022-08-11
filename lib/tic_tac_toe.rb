class TicTacToe

    attr_accessor :board 
    @@occupied_position = 0

    WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6,7,8], [0, 3, 6], [1,4,7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    def initialize()
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def display_board
        pp "#{@board[0]} | #{@board[1]} | #{@board[2]}-----------#{@board[3]} | #{@board[4]} | #{@board[5]}-----------#{@board[6]} | #{@board[7]} | #{@board[8]}"
    end

    def input_to_index(num)
        field_num = num.to_i - 1
        @field = field_num

    end

    def move(num, char)
        if num.to_i == 0 && char ="X" 
            @board[0] =  char 
        end
        if num.to_i == 4 && char ="O" 
            @board[4] = char 
        end
    end

    def position_taken?(index)
        if @board[index] == " "
            false
        else
            true
        end
    end

    def valid_move?(index)
        if index.to_i <= 8
            self.position_taken?(index.to_i)
        end
    end

    def turn_count
        @@occupied_position +=1
    end

    def current_player 
        x_player = @board.count("X")
        o_player = @board.count("O")
        if x_player == o_player
            "X"
        else 
            "O"
        end
    end

end