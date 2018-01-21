# 問題1. FizzBuzz問題
# * 3で割り切れるときFizz
# * 5で割り切れるときBuzz
# * 15倍数のときFizzBuzz
# * その他の場合、数をそのまま表示する
#
def fizz_buzz
  100.times do |index|

    display_string = ""

    if (index+1) % 3 == 0
      display_string += "Fizz"
    end

    if (index+1) % 5 == 0
      display_string += "Buzz"
    end

    if display_string.empty?
      display_string = (index+1).to_s
    end

    puts display_string
  end
end

fizz_buzz
