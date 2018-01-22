# 問題8. 食料クラスとインスタンス変数
#
# $ ruby question8.rb
# [0]:カロリーを入力する
# [1]:カロリーの合計を見る
# 0
# 料理名を入力してください:
#   ハンバーガー
# カロリーを入力してください:
#   650
# [0]:カロリーを入力する
# [1]:カロリーの合計を見る
# 0
# 料理名を入力してください:
#   カレーライス
# カロリーを入力してください:
#   700
# [0]:カロリーを入力する
# [1]:カロリーの合計を見る
# 1
# -----------------------------
# ハンバーガー 	:650
# カレーライス 	:700
# -----------------------------
# 合計	:1350
#
class Food

  @@foods = []

  def self.input
    puts "料理名を入力してください:"
    name = gets.chomp
    puts "カロリーを入力してください:"
    calorie = gets.to_i

    @@foods << { :name => name, :calorie => calorie }
  end

  def self.show_all_calorie
    total_calorie = 0

    line = "-----------------------------"
    puts line
    @@foods.each do |food|
      puts "#{food[:name]} \t:#{food[:calorie]}"
      total_calorie += food[:calorie]
    end
    puts line
    puts "合計\t:#{total_calorie}"
  end
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input # カロリーの入力
  elsif input == 1
    Food.show_all_calorie # カロリーの合計を表示
    exit
  end
end
