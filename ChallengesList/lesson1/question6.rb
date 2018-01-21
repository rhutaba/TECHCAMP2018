# 問題6. Dogクラスとインスタンス変数
#
# $ ruby question6.rb
# ワンワン
# わたしは「犬」です
# わたしの名前は「マロン」で種類は「トイプードル」です
#
class Dog
  def initialize
    @@type = "犬"
    @name = "マロン"
    @dog_type = "トイプードル"
  end

  def self.say
    puts "ワンワン"
  end

  def say_type
    puts "わたしは「#{@@type}」です"
  end

  def self_introduction
    puts "わたしの名前は「#{@name}」で種類は「#{@dog_type}」です"
  end
end

dog = Dog.new
Dog.say
dog.say_type
dog.self_introduction

