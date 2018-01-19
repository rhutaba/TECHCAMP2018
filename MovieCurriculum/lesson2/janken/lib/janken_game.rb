require './janken'
require './hand'

def game(player, npc, janken)
  # じゃんけんで出し合う手を各々が決める
  player.hand_shape(rand(0..2))
  npc.hand_shape(rand(0..2))

  # じゃんけんの手を出し合う
  puts "ぽん！"
  janken.battle(player.hand_out, npc.hand_out)


  # じゃんけんの結果を表示する
  case janken.result
  when true
    puts "プレイヤーの勝利"
  when false
    puts "NPCの勝利"
  when nil
    puts "あいこ"
  end

  # あいこか否かを返す
  janken.result.nil?
end

# 出場者が互いに場に手を出す
player = Player::Hand.new
npc = Player::Hand.new

# じゃんけんゲームがスタート
janken = Game::Janken.new

while game(player, npc, janken)
end
