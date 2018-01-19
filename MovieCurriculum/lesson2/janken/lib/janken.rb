class Game
  class Janken
    STONE = 0
    SCISSORS = 1
    PAPER = 2
    WIN = true
    LOSE = false
    DRAW = nil

    RESULT_MATRIX = [[DRAW, WIN, LOSE], [LOSE, DRAW, WIN], [WIN, LOSE, DRAW]]

    def initialize
      puts "最初はグー、じゃんけん"
      @hand_of_player1 = STONE
      @hand_of_player2 = STONE
    end

    def battle(hand_of_player1, hand_of_player2)
      @hand_of_player1 = hand_of_player1
      @hand_of_player2 = hand_of_player2
    end

    # 勝ち: true、負け: false、あいこ: nil
    def result
      RESULT_MATRIX[@hand_of_player1][@hand_of_player2]
    end
  end
end
