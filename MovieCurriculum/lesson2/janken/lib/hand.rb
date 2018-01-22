class Player
  STONE = 0
  SCISSORS = 1
  PAPER = 2

  HAND_SHAPE = [STONE, SCISSORS, PAPER]

  #
  # @param: [Integer] グー・チョキ・パー
  # @return: [Integer|nil]
  #
  def initialize(hand)
    if HAND_SHAPE.include?(hand)
      @hand = hand
    end
  end

  #
  # @return: [Integer|nil]
  #
  def hand_out
    @hand
  end

  #
  # @param: [Integer]
  # @return: [Integer]
  #
  def recognize(others_hand)
    @others_hand = others_hand
  end

  #
  # @return: [Boolean]
  #
  def draw?
    @hand == @others_hand
  end

  #
  # @return: [Boolean]
  #
  def win?
    judge
  end

  private

  #
  # @return: [Boolean|nil]
  #
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

  #
  # @return: [Boolean]
  #
  def stone_wins?
    @others_hand == SCISSORS
  end

  #
  # @return: [Boolean]
  #
  def scissors_wins?
    @others_hand == PAPER
  end

  #
  # @return: [Boolean]
  #
  def paper_wins?
    @others_hand == STONE
  end
end
