class Game
  class Janken
    STONE = 0
    SCISSORS = 1
    PAPER = 2
    WIN = true
    LOSE = false
    DRAW = nil

    def initialize
      puts "最初はグー！"
      @hand_of_player1 = STONE
      @hand_of_player2 = STONE
      @continue = false
    end

    def battle(hand_of_player1, hand_of_player2)
      if @continue
        puts "あいこ、で、しょ！"
      else
        puts "じゃん、けん、ぽん！"
      end

      display_shape_hand(hand_of_player1)
      display_shape_hand(hand_of_player2)

      @hand_of_player1 = hand_of_player1
      @hand_of_player2 = hand_of_player2
    end

    # 勝ち: true、負け: false、あいこ: nil
    def result
      if draw?
        @continue = true
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

    def continue?
      !draw?
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

    def display_shape_hand(hand)
      case hand
      when STONE
        puts "グー"
      when SCISSORS
        puts "チョキ"
      when PAPER
        puts "パー"
      end
    end
  end
end
