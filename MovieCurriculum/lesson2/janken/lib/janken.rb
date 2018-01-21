class Game
  class Janken
    STONE = 0
    SCISSORS = 1
    PAPER = 2
    WIN = true
    LOSE = false
    DRAW = nil

    def initialize
      @hand_of_player1 = STONE
      @hand_of_player2 = STONE
    end

    def battle(hand_of_player1, hand_of_player2)
      @hand_of_player1 = hand_of_player1
      @hand_of_player2 = hand_of_player2
    end

    # 勝ち: true、負け: false、あいこ: nil
    def result
      if draw?
        nil
      else
        case @hand_of_player1
        when STONE
          stone_wininng?(@hand_of_player2)
        when SCISSORS
          scissors_winning?(@hand_of_player2)
        when PAPER
          paper_winning?(@hand_of_player2)
        end
      end
    end

    def draw?
      @hand_of_player1 == @hand_of_player2
    end

    def stone_wininng?(hand)
      hand == SCISSORS
    end

    def scissors_winning?(hand)
      hand == PAPER
    end

    def paper_winning?(hand)
      hand == STONE
    end
  end
end
