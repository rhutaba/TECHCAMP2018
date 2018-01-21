require './janken'
require './hand'

def janken_game(player, npc, janken)
  # じゃんけんで出し合う手を各々が決める
  player.hand_shape(rand(0..2))
  npc.hand_shape(rand(0..2))

  # じゃんけんの手を出し合う
  janken.battle(player.hand_out, npc.hand_out)

  puts "プレイヤーの手\t: " + display_hand_shape(player.hand_out)
  puts "NPCの手\t\t: " + display_hand_shape(npc.hand_out)

  # じゃんけんの結果を返す
  janken.result
end

def display_hand_shape(hand_of_player)
  case hand_of_player
  when 0
    "グー！"
  when 1
    "チョキ！"
  when 2
    "パー！"
  end
end

# 出場者が互いに場に手を出す
player = Player::Hand.new
npc = Player::Hand.new

# じゃんけんゲームがスタート
puts "最初はグー、じゃんけん..."
janken = Game::Janken.new

continue = true

while continue do
  result = janken_game(player, npc, janken)

  case result
  when true
    puts "****プレイヤーの勝利****"
  when false
    puts "****NPCの勝利****"
  when nil
    puts "あいこで…"
    puts "----------------------"
  end

  # 結果が帰ってきていなければじゃんけん継続
  continue = result.nil?
end
