require './hand'

DRAW = 'draw'
WIN = 'win'
LOSE = 'lose'

def display_hand_shape(player_hand)
  case player_hand
  when 0
    "グー！"
  when 1
    "チョキ！"
  when 2
    "パー！"
  end
end

puts "最初はグー、じゃんけん..."

continue = true

while continue do
  player = Player.new(rand(0..2))
  npc = Player.new(rand(0..2))

  puts "プレイヤーの手\t: " + display_hand_shape(player.hand_out)
  puts "NPCの手\t\t: " + display_hand_shape(npc.hand_out)

  player.recognize(npc.hand_out)

  if player.draw?
    puts "あいこで…"
    puts "----------------------"
  else
    if player.win?
      puts "****プレイヤーの勝利****"
      continue = false
    else
      puts "****NPCの勝利****"
      continue = false
    end
  end
end
