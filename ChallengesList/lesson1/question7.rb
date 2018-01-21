# 問題6. Fruitsクラスとインスタンス変数
#
# $ ruby question7.rb
# 合計の価格は「380」円です
#
class Fruits
  @@sum = 0

  def initialize(name, price)
    @name = name
    @price = price
    @@sum += @price
  end

  def self.get_sum
    puts "合計の価格は「#{@@sum}」円です"
  end
end


# 以下で3つのインスタンスを生成してください
apple = Fruits.new("リンゴ",120)
orange = Fruits.new("オレンジ",200)
strawberry = Fruits.new("イチゴ",60)

# 生成したらクラスメソッドget_sumを呼んで合計価格を表示しまし
Fruits.get_sum
