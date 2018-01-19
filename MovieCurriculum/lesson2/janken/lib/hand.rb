class Player
  class Hand
    STONE = 0
    SCISSORS = 1
    PAPER = 2

    # 手は、一般的な手の形状を知っている
    # ※ 本来はじゃんけんの形状以外にももっと知っているはずである
    HAND_SHAPE = [STONE, SCISSORS, PAPER]

    def hand_shape(hand)
      if hand.nil?
        # 心に決めた手がない場合、適当(ランダム)に手の形状を返す
        @hand = HAND_SHAPE.shuffle.first
      else
        # 心に決めた手がある場合、引数の通りに手の形状を返す
        @hand = hand
      end
    end

    def hand_out
      @hand
    end
  end
end
