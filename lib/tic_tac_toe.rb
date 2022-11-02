class TicTacToe
 attr_reader :board
 attr_accessor :count
WIN_COMBINATIONS = [
    [0,1,2], 
    [3,4,5], 
    [6,7,8], 
    [0,3,6], 
    [1,4,7], 
    [2,5,8], 
    [0,4,8], 
    [6,4,2]]


def initialize 
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @@count = 0
end

def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(stg)
stg.to_i - 1
end

def move (input, player = "X")
@board[input] = player
end

def position_taken?(index)
@board[index] == "X" || @board[index] == "O"
end

def valid_move?(move)
move.between?(0, 8) && !position_taken?(move)
end

def turn_count
 @board.filter { |index| index != " "}.length
end

end 
