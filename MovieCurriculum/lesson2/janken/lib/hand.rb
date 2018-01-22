class Player
  STONE = 0
  SCISSORS = 1
  PAPER = 2

  HAND_SHAPE = [STONE, SCISSORS, PAPER]

  def initialize(hand)
    if HAND_SHAPE.include?(hand)
      @hand = hand
    end
  end

  def hand_out
    @hand
  end

  def recognize(others_hand)
    @others_hand = others_hand
  end

  def draw?
    @hand == @others_hand
  end

  def win?
    judge
  end

  private

  def judge
    case @hand
    when STONE
      stone_wins?
    when SCISSORS
      scissors_wins?
    when PAPER
      paper_wins?
    else
      nil
    end
  end

  def stone_wins?
    @others_hand == SCISSORS
  end

  def scissors_wins?
    @others_hand == PAPER
  end

  def paper_wins?
    @others_hand == STONE
  end
end
